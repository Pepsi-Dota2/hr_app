part of 'leave_cubit.dart';

@freezed
class LeaveState with _$LeaveState {
  const factory LeaveState({@Default(Status.initial) Status status, @Default("") image}) = _LeaveState;
}
