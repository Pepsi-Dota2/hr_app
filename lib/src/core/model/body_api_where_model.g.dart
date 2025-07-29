// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_api_where_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyApiWhereModelImpl _$$BodyApiWhereModelImplFromJson(
  Map<String, dynamic> json,
) => _$BodyApiWhereModelImpl(
  db_type: json['db_type'] as String? ?? "",
  store_code: json['store_code'] as String? ?? "",
  where: json['where'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$$BodyApiWhereModelImplToJson(
  _$BodyApiWhereModelImpl instance,
) => <String, dynamic>{
  'db_type': instance.db_type,
  'store_code': instance.store_code,
  'where': instance.where,
};
