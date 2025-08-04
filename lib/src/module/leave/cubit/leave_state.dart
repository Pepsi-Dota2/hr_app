part of 'leave_cubit.dart';

@freezed
class LeaveState with _$LeaveState {
  const factory LeaveState({@Default(Status.initial) Status status, @Default("") image, LeaveModel? leave, @Default([]) List<LeaveModel> leaves}) =
      _LeaveState;
}
