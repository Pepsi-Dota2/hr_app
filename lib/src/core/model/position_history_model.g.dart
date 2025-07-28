// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionHistoryModelImpl _$$PositionHistoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$PositionHistoryModelImpl(
  emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
  position_id: (json['position_id'] as num?)?.toInt() ?? 0,
  start_date: json['start_date'] as String? ?? '',
  end_date: json['end_date'] as String? ?? '',
);

Map<String, dynamic> _$$PositionHistoryModelImplToJson(
  _$PositionHistoryModelImpl instance,
) => <String, dynamic>{
  'emp_id': instance.emp_id,
  'position_id': instance.position_id,
  'start_date': instance.start_date,
  'end_date': instance.end_date,
};
