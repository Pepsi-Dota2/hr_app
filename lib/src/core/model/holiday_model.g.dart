// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HolidayModelImpl _$$HolidayModelImplFromJson(Map<String, dynamic> json) =>
    _$HolidayModelImpl(
      emp_holiday_id: (json['emp_holiday_id'] as num?)?.toInt() ?? 0,
      emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
      holiday_id: (json['holiday_id'] as num?)?.toInt() ?? 0,
      reason: json['reason'] as String? ?? '',
      department_name: json['department_name'] as String? ?? '',
      emp_name: json['emp_name'] as String? ?? '',
      approved_by: json['approved_by'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      holiday_name: json['holiday_name'] as String? ?? '',
      holiday_start_date: json['holiday_start_date'] as String? ?? '',
      holiday_end_date: json['holiday_end_date'] as String? ?? '',
    );

Map<String, dynamic> _$$HolidayModelImplToJson(_$HolidayModelImpl instance) =>
    <String, dynamic>{
      'emp_holiday_id': instance.emp_holiday_id,
      'emp_id': instance.emp_id,
      'holiday_id': instance.holiday_id,
      'reason': instance.reason,
      'department_name': instance.department_name,
      'emp_name': instance.emp_name,
      'approved_by': instance.approved_by,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'holiday_name': instance.holiday_name,
      'holiday_start_date': instance.holiday_start_date,
      'holiday_end_date': instance.holiday_end_date,
    };
