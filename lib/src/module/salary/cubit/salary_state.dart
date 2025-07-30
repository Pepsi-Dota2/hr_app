part of 'salary_cubit.dart';

@freezed
class SalaryState with _$SalaryState {
  const factory SalaryState({@Default(Status.initial) Status status, DateTime? date, @Default([]) List<SararyModel> salary}) = _SalaryState;
}
