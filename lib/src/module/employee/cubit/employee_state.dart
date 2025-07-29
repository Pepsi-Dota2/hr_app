part of 'employee_cubit.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({@Default(Status.initial) Status status, @Default("") image, @Default("") String localImagePath}) = _Initial;
}
