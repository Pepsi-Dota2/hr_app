part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({@Default(Status.initial) Status status, @Default("") image}) = _ProfileState;
}
