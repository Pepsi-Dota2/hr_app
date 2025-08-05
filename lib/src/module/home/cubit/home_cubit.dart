import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/work_record_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(date: DateTime.now())) {}
  Timer? timer;
  final dio = DioClient().instance();

  void scheduleNextUpdate() {
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    final durationUntilMidnight = tomorrow.difference(now);

    timer?.cancel();
    timer = Timer(durationUntilMidnight, () {
      emit(state.copyWith(date: DateTime.now()));
      scheduleNextUpdate();
    });
  }

  Future<void> getRecord() async {
    emit(state.copyWith(status: Status.loading));
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString('emp_id');

    if (userId == null) {
      emit(state.copyWith(status: Status.failure));
      return;
    }

    try {
      final response = await dio.get("${AppApiPath.recordWorking}/$userId/work-record/ended/nofilter");

      if (response.statusCode == 200) {
        final responseBody = response.data;
        final records = responseBody['data'];

        if (records != null && records.isNotEmpty) {
          final lastRecord = records.last;

          emit(
            state.copyWith(
              getStart: DateTime.tryParse(lastRecord['start_at']),
              endtime: DateTime.tryParse(lastRecord['end_at']),
              date: DateTime.tryParse(lastRecord['work_record_date']),
              status: Status.success,
            ),
          );
        } else {
          emit(state.copyWith(getStart: null, endtime: null, date: null, status: Status.success));
        }
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
