part of 'employee_cubit.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    @Default(Status.initial) Status status,
    @Default("") image,
    @Default("") String localImagePath,
    @Default([]) List<SararyModel> salary,
    EmployeesModel? user,
    @Default([]) List<EmployeesModel> employee,
  }) = _EmployeeState;
}
