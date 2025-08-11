part of 'holiday_admin_cubit.dart';

@freezed
class HolidayAdminState with _$HolidayAdminState {
  const factory HolidayAdminState({@Default(Status.initial) Status status, @Default([]) List<HolidayModel> holiday}) = _HolidayAdminState;
}
