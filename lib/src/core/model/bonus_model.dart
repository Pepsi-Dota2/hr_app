import 'package:freezed_annotation/freezed_annotation.dart';

part 'bonus_model.freezed.dart';
part 'bonus_model.g.dart';

@freezed
class BonusModel with _$BonusModel {
  const factory BonusModel({
    @Default(0) int emp_id,
    @Default("") String salary_month,
    @Default("") String bonus_type,
    @Default(0) int amount,
    @Default("") String note,
  }) = _BonusModel;
  factory BonusModel.fromJson(Map<String, dynamic> json) => _$BonusModelFromJson(json);
}
