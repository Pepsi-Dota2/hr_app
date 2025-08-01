part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({@Default(Status.initial) Status status, EmployeesModel? user}) = _SettingState;
}
