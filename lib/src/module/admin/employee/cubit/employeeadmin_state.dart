part of 'employeeadmin_cubit.dart';

@freezed
class EmployeeadminState with _$EmployeeadminState {
  const factory EmployeeadminState({@Default(Status.initial) Status status, @Default([]) List<EmployeesModel> employee}) = _EmployeeadminState;
}
