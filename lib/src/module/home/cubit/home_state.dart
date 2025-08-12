part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    DateTime? date,
    DateTime? getStart,
    DateTime? endtime,
    @Default([]) List<WorkRecordModel> workrecord,
    @Default([]) List<HolidayModel> holiday,
    EmployeesModel? user,
  }) = _HomeState;
}
