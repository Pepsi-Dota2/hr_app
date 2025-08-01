part of 'work_time_record_cubit.dart';

@freezed
class WorkTimeRecordState with _$WorkTimeRecordState {
  const factory WorkTimeRecordState({
    @Default(Status.initial) Status status,
    StopWatchTimer? timer,
    @Default(false) bool isStart,
    DateTime? startDateTime,
    double? latitude,
    double? longitude,
  }) = _Initial;
}
