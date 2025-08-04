part of 'employeeadmin_cubit.dart';

@freezed
class EmployeeadminState with _$EmployeeadminState {
  const factory EmployeeadminState({
    @Default(Status.initial) Status status,
    @Default([]) List<EmployeesModel> employee,
    EmployeesModel? selectEmployee,
    @Default([]) List<PositionModel> position,
    @Default([]) List<DepartmentModel> departments,
    @Default([]) List<AuthModel> user,
    @Default("") selectDepartment,
    @Default("") selectPosition,
    @Default("") selectUser,
  }) = _EmployeeadminState;
}
