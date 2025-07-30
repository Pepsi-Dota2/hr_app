import 'package:freezed_annotation/freezed_annotation.dart';

part 'sarary_model.freezed.dart';
part 'sarary_model.g.dart';

@freezed
class SararyModel with _$SararyModel {
  const factory SararyModel({
    @Default(0) int emp_id,
    @Default("") String emp_name,
    @Default("") String position,
    @Default(0) int base_salary,
    @Default(0) int net_salary,
    @Default(0) int total_deduction,
    @Default(0) int total_bonus,
  }) = _SararyModel;
  factory SararyModel.fromJson(Map<String, dynamic> json) => _$SararyModelFromJson(json);
}
