import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/service/secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'work_time_record_state.dart';
part 'work_time_record_cubit.freezed.dart';

class WorkTimeRecordCubit extends Cubit<WorkTimeRecordState> {
  WorkTimeRecordCubit() : super(WorkTimeRecordState());
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(mode: StopWatchMode.countUp);
  Timer? _midnightResetTimer;
  final dio = DioClient().instance();

  void onStart() {
    _stopWatchTimer.onStartTimer();
    final now = DateTime.now();
    _scheduleMidnightReset();
    emit(state.copyWith(timer: _stopWatchTimer, isStart: true, startDateTime: now));
  }

  Future<void> getCurrentLocation() async {
    emit(state.copyWith(status: Status.loading));
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
          emit(state.copyWith(status: Status.failure));
          throw Exception("User denied permissions");
        }
      }
      final position = await Geolocator.getCurrentPosition(locationSettings: const LocationSettings(accuracy: LocationAccuracy.high));

      await SecureStorage.write('latitude', position.latitude.toString());
      await SecureStorage.write('longitude', position.longitude.toString());
      emit(state.copyWith(status: Status.success, latitude: position.latitude, longitude: position.longitude));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
      throw Exception("Failed to get location: $e");
    }
  }

  Future<void> onStartWorking() async {
    try {
      emit(state.copyWith(status: Status.loading));

      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      final latStr = await SecureStorage.read('latitude');
      final lngStr = await SecureStorage.read('longitude');

      if (userId == null) {
        throw Exception('User ID not found');
      }

      if (latStr == null || lngStr == null) {
        throw Exception('Location not available');
      }

      final response = await dio.post(
        AppApiPath.startWorkRecord,
        data: {"emp_id": int.parse(userId), "start_latitude": latStr, "start_longitude": lngStr},
      );
      final responseData = response.data;
      final dataList = responseData['data'];

      if (dataList is List && dataList.isNotEmpty) {
        final createdAt = dataList[0]['created_at']?.toString();
        final updatedAt = dataList[0]['updated_at']?.toString();

        if (createdAt != null) {
          await prefs.setString('created_at', createdAt);
        }
        if (updatedAt != null) {
          await prefs.setString('updated_at', updatedAt);
        }
      }

      emit(state.copyWith(status: Status.success));
    } catch (e) {
      print("❌ Start working failed: $e");
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> startWorkSession() async {
    try {
      emit(state.copyWith(status: Status.loading));
      await getCurrentLocation();
      await onStartWorking();
      onStart();
      emit(state.copyWith(status: Status.success));
    } catch (e) {
      print("❌ Failed to start work session: $e");
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> endWorkRecord() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      final latStr = await SecureStorage.read('latitude');
      final lngStr = await SecureStorage.read('longitude');
      if (userId == null) {
        throw Exception('User ID not found');
      }
      if (latStr == null || lngStr == null) {
        throw Exception('Location not available');
      }
      final response = await dio.patch(
        "${AppApiPath.endWorkRecord}/$userId/work-record/end",
        data: {"emp_id": int.parse(userId), "end_latitude": latStr, "end_longitude": lngStr},
      );

      print('✅ Start work success: ${response.data}');
      _stopWatchTimer.onStopTimer();
      _stopWatchTimer.onResetTimer();
      emit(state.copyWith(status: Status.success));
    } catch (e) {
      print("❌ Failed to start work session: $e");
      emit(state.copyWith(status: Status.failure));
    }
  }

  void onStop() {
    _stopWatchTimer.onStopTimer();
    _midnightResetTimer?.cancel();
    emit(state.copyWith(isStart: false));
  }

  void _scheduleMidnightReset() {
    _midnightResetTimer?.cancel();
    final now = DateTime.now();
    final nextMidnight = DateTime(now.year, now.month, now.day + 1);
    final durationUntilMidnight = nextMidnight.difference(now);
    _midnightResetTimer = Timer(durationUntilMidnight, () {
      _resetTimerAtMidnight();
      _midnightResetTimer = Timer.periodic(const Duration(days: 1), (_) => _resetTimerAtMidnight());
    });
  }

  void _resetTimerAtMidnight() {
    _stopWatchTimer.onResetTimer();
    _stopWatchTimer.onStartTimer();
    emit(state.copyWith(startDateTime: DateTime.now()));
  }

  @override
  Future<void> close() {
    _stopWatchTimer.dispose();
    _midnightResetTimer?.cancel();
    return super.close();
  }
}
