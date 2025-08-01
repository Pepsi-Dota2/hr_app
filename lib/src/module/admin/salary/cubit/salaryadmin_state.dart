part of 'salaryadmin_cubit.dart';

@freezed
class SalaryadminState with _$SalaryadminState {
  const factory SalaryadminState({
    @Default(Status.initial) Status status,
    @Default([]) List<SararyModel> salary,
    @Default([]) List<SararyModel> filteredSalary,
    @Default('') String searchQuery,
  }) = _SalaryadminState;
}
