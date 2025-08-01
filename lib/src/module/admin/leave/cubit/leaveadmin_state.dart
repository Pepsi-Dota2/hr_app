part of 'leaveadmin_cubit.dart';

@freezed
class LeaveadminState with _$LeaveadminState {
  const factory LeaveadminState({@Default(Status.initial) Status status, @Default([]) List<LeaveModel> leave}) = _LeaveadminState;
}
