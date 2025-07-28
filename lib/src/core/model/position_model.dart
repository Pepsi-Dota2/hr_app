import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel({@Default(0) int position_number, @Default("") String position_name, @Default(0) int position_salary}) = _PositionModel;
  factory PositionModel.fromJson(Map<String, dynamic> json) => _$PositionModelFromJson(json);
}
