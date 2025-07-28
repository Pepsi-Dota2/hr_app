// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyApiModelImpl _$$BodyApiModelImplFromJson(Map<String, dynamic> json) =>
    _$BodyApiModelImpl(
      db_type: json['db_type'] as String? ?? "",
      store_code: json['store_code'] as String? ?? "",
      set: json['set'] as Map<String, dynamic>? ?? const {},
      where: json['where'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$BodyApiModelImplToJson(_$BodyApiModelImpl instance) =>
    <String, dynamic>{
      'db_type': instance.db_type,
      'store_code': instance.store_code,
      'set': instance.set,
      'where': instance.where,
    };
