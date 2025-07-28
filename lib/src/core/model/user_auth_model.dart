import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_model.freezed.dart';
part 'user_auth_model.g.dart';

@freezed
class UserAuthModel with _$UserAuthModel {
  const factory UserAuthModel({@Default("") String user_email, @Default("") String user_password, @Default("") String user_name}) = _UserAuthModel;
  factory UserAuthModel.fromJson(Map<String, dynamic> json) => _$UserAuthModelFromJson(json);
}
