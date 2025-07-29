import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_api_where_model.freezed.dart';
part 'body_api_where_model.g.dart';

@freezed
class BodyApiWhereModel with _$BodyApiWhereModel {
  const factory BodyApiWhereModel({@Default("") String db_type, @Default("") String store_code, @Default({}) Map<String, dynamic> where}) =
      _BodyApiWhereModel;
  factory BodyApiWhereModel.fromJson(Map<String, dynamic> json) => _$BodyApiWhereModelFromJson(json);
}
