// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sarary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SararyModelImpl _$$SararyModelImplFromJson(Map<String, dynamic> json) =>
    _$SararyModelImpl(
      emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
      emp_name: json['emp_name'] as String? ?? "",
      position: json['position'] as String? ?? "",
      base_salary: (json['base_salary'] as num?)?.toInt() ?? 0,
      net_salary: (json['net_salary'] as num?)?.toInt() ?? 0,
      total_deduction: (json['total_deduction'] as num?)?.toInt() ?? 0,
      total_bonus: (json['total_bonus'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SararyModelImplToJson(_$SararyModelImpl instance) =>
    <String, dynamic>{
      'emp_id': instance.emp_id,
      'emp_name': instance.emp_name,
      'position': instance.position,
      'base_salary': instance.base_salary,
      'net_salary': instance.net_salary,
      'total_deduction': instance.total_deduction,
      'total_bonus': instance.total_bonus,
    };
