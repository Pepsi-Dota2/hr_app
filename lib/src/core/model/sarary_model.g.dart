// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sarary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SararyModelImpl _$$SararyModelImplFromJson(Map<String, dynamic> json) =>
    _$SararyModelImpl(
      emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
      current_salary: (json['current_salary'] as num?)?.toInt() ?? 0,
      net_salary: (json['net_salary'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SararyModelImplToJson(_$SararyModelImpl instance) =>
    <String, dynamic>{
      'emp_id': instance.emp_id,
      'current_salary': instance.current_salary,
      'net_salary': instance.net_salary,
    };
