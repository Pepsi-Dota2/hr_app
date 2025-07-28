// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthModelImpl _$$UserAuthModelImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthModelImpl(
      user_email: json['user_email'] as String? ?? "",
      user_password: json['user_password'] as String? ?? "",
      user_role: json['user_role'] as String? ?? "",
      user_status: json['user_status'] as String? ?? "",
    );

Map<String, dynamic> _$$UserAuthModelImplToJson(_$UserAuthModelImpl instance) =>
    <String, dynamic>{
      'user_email': instance.user_email,
      'user_password': instance.user_password,
      'user_role': instance.user_role,
      'user_status': instance.user_status,
    };
