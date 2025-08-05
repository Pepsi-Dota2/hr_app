// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkRecordModelImpl _$$WorkRecordModelImplFromJson(
  Map<String, dynamic> json,
) => _$WorkRecordModelImpl(
  work_record_id: (json['work_record_id'] as num?)?.toInt() ?? 0,
  emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
  work_record_date: json['work_record_date'] as String? ?? '',
  start_latitude: json['start_latitude'] as String? ?? '',
  start_longitude: json['start_longitude'] as String? ?? '',
  start_at: json['start_at'] as String? ?? '',
  end_latitude: json['end_latitude'] as String? ?? '',
  end_longitude: json['end_longitude'] as String? ?? '',
  end_at: json['end_at'] as String? ?? '',
  work_record_state: json['work_record_state'] as String? ?? '',
  approve_state: json['approve_state'] as String? ?? '',
  created_at: json['created_at'] as String? ?? '',
  updated_at: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$$WorkRecordModelImplToJson(
  _$WorkRecordModelImpl instance,
) => <String, dynamic>{
  'work_record_id': instance.work_record_id,
  'emp_id': instance.emp_id,
  'work_record_date': instance.work_record_date,
  'start_latitude': instance.start_latitude,
  'start_longitude': instance.start_longitude,
  'start_at': instance.start_at,
  'end_latitude': instance.end_latitude,
  'end_longitude': instance.end_longitude,
  'end_at': instance.end_at,
  'work_record_state': instance.work_record_state,
  'approve_state': instance.approve_state,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
};
