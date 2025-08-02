part of 'departmentadmin_cubit.dart';

@freezed
class DepartmentadminState with _$DepartmentadminState {
  const factory DepartmentadminState({
    @Default(Status.initial) Status status,
    @Default([]) List<DepartmentModel> departments,
    @Default('') String searchQuery,
    @Default([]) List<DepartmentModel> filteredSalary,
    DepartmentModel? selected,
  }) = _DepartmentadminState;
}
