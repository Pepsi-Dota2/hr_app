import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_history_model.freezed.dart';
part 'salary_history_model.g.dart';

@freezed
class SalaryHistoryModel with _$SalaryHistoryModel {
  const factory SalaryHistoryModel({
    @Default(0) int emp_id,
    @Default(0) int base_salary,
    @Default(0) int bonus,
    @Default(0) int allowance,
    @Default(0) int ot_payment,
    @Default(0) int deduction,
    @Default(0) int net_salary,
    @Default("") String salary_month,
  }) = _SalaryHistoryModel;
  factory SalaryHistoryModel.fromJson(Map<String, dynamic> json) => _$SalaryHistoryModelFromJson(json);
}
