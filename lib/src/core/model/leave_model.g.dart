// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveModelImpl _$$LeaveModelImplFromJson(Map<String, dynamic> json) =>
    _$LeaveModelImpl(
      leave_detail_id: (json['leave_detail_id'] as num?)?.toInt() ?? 0,
      emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
      leave_type_name: json['leave_type_name'] as String? ?? '',
      leave_start_at: json['leave_start_at'] as String? ?? '',
      leave_end_at: json['leave_end_at'] as String? ?? '',
      detail: json['detail'] as String? ?? '',
      image: json['image'] as String? ?? '',
      leave_state: json['leave_state'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$$LeaveModelImplToJson(_$LeaveModelImpl instance) =>
    <String, dynamic>{
      'leave_detail_id': instance.leave_detail_id,
      'emp_id': instance.emp_id,
      'leave_type_name': instance.leave_type_name,
      'leave_start_at': instance.leave_start_at,
      'leave_end_at': instance.leave_end_at,
      'detail': instance.detail,
      'image': instance.image,
      'leave_state': instance.leave_state,
      'created_at': instance.created_at,
    };
