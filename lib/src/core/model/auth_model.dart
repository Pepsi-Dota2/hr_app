import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({@Default(0) int user_id, @Default("") String user_name}) = _AuthModel;
  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
}
