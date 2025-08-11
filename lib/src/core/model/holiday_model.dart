import 'package:freezed_annotation/freezed_annotation.dart';

part 'holiday_model.freezed.dart';
part 'holiday_model.g.dart';

@freezed
class HolidayModel with _$HolidayModel {
  const factory HolidayModel({
    @Default(0) int emp_holiday_id,
    @Default(0) int emp_id,
    @Default(0) int holiday_id,
    @Default('') String reason,
    @Default('') String department_name,
    @Default('') String emp_name,
    @Default('') String approved_by,
    @Default('') String created_at,
    @Default('') String updated_at,
    @Default('') String holiday_name,
    @Default('') String holiday_start_date,
    @Default('') String holiday_end_date,
  }) = _HolidayModel;

  factory HolidayModel.fromJson(Map<String, dynamic> json) => _$HolidayModelFromJson(json);
}
