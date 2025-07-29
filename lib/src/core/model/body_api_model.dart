import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_api_model.freezed.dart';
part 'body_api_model.g.dart';

@freezed
class BodyApiModel with _$BodyApiModel {
  const factory BodyApiModel({@Default("") String db_type, @Default("") String store_code, @Default({}) Map<String, dynamic> set}) = _BodyApiModel;
  factory BodyApiModel.fromJson(Map<String, dynamic> json) => _$BodyApiModelFromJson(json);
}
