part of 'positionadmin_cubit.dart';

@freezed
class PositionadminState with _$PositionadminState {
  const factory PositionadminState({
    @Default(Status.initial) Status status,
    @Default([]) List<PositionModel> position,
    @Default([]) List<PositionModel> filteredSalary,
    @Default('') String searchQuery,
  }) = _PositionadminState;
}
