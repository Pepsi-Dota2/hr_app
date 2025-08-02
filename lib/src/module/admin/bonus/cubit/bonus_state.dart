part of 'bonus_cubit.dart';

@freezed
class BonusState with _$BonusState {
  const factory BonusState({@Default(Status.initial) Status status}) = _BonusState;
}
