// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionModelImpl _$$PositionModelImplFromJson(Map<String, dynamic> json) =>
    _$PositionModelImpl(
      position_id: (json['position_id'] as num?)?.toInt() ?? 0,
      position_name: json['position_name'] as String? ?? "",
      position_salary: (json['position_salary'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PositionModelImplToJson(_$PositionModelImpl instance) =>
    <String, dynamic>{
      'position_id': instance.position_id,
      'position_name': instance.position_name,
      'position_salary': instance.position_salary,
    };
