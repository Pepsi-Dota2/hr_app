import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_history_model.freezed.dart';
part 'position_history_model.g.dart';

@freezed
class PositionHistoryModel with _$PositionHistoryModel {
  const factory PositionHistoryModel({
    @Default(0) int emp_id,
    @Default(0) int position_id,
    @Default('') String start_date,
    @Default('') String end_date,
  }) = _PositionHistoryModel;
  factory PositionHistoryModel.fromJson(Map<String, dynamic> json) => _$PositionHistoryModelFromJson(json);
}
