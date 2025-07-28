import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'work_time_record_state.dart';
part 'work_time_record_cubit.freezed.dart';

class WorkTimeRecordCubit extends Cubit<WorkTimeRecordState> {
  WorkTimeRecordCubit() : super(WorkTimeRecordState());
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(mode: StopWatchMode.countUp);
  Timer? _midnightResetTimer;

  void onStart() {
    _stopWatchTimer.onStartTimer();
    final now = DateTime.now();
    _scheduleMidnightReset();
    emit(state.copyWith(timer: _stopWatchTimer, isStart: true, startDateTime: now));
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
