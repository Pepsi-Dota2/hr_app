import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_record_model.freezed.dart';
part 'work_record_model.g.dart';

@freezed
class WorkRecordModel with _$WorkRecordModel {
  const factory WorkRecordModel({
    @Default(0) int work_record_id,
    @Default(0) int emp_id,
    @Default('') String work_record_date,
    @Default('') String start_latitude,
    @Default('') String start_longitude,
    @Default('') String start_at,
    @Default('') String end_latitude,
    @Default('') String end_longitude,
    @Default('') String end_at,
    @Default('') String work_record_state,
    @Default('') String approve_state,
    @Default('') String created_at,
    @Default('') String updated_at,
  }) = _WorkRecordModel;

  factory WorkRecordModel.fromJson(Map<String, dynamic> json) => _$WorkRecordModelFromJson(json);
}
