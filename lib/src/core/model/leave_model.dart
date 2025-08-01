import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_model.freezed.dart';
part 'leave_model.g.dart';

@freezed
class LeaveModel with _$LeaveModel {
  const factory LeaveModel({
    @Default(0) int leave_detail_id,
    @Default(0) int emp_id,
    @Default('') String leave_type_name,
    @Default('') String leave_start_at,
    @Default('') String leave_end_at,
    @Default('') String detail,
    @Default('') String image,
    @Default('') String leave_state,
    @Default('') String created_at,
  }) = _LeaveModel;
  factory LeaveModel.fromJson(Map<String, dynamic> json) => _$LeaveModelFromJson(json);
}
