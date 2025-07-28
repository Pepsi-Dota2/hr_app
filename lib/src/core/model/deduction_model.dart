import 'package:freezed_annotation/freezed_annotation.dart';

part 'deduction_model.freezed.dart';
part 'deduction_model.g.dart';

@freezed
class DeductionModel with _$DeductionModel {
  const factory DeductionModel({
    @Default(0) int emp_id,
    @Default('') String salary_month,
    @Default('') String deduction_type,
    @Default(0) int amount,
    @Default("") String note,
  }) = _DeductionModel;
  factory DeductionModel.fromJson(Map<String, dynamic> json) => _$DeductionModelFromJson(json);
}
