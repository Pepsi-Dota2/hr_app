// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BonusModelImpl _$$BonusModelImplFromJson(Map<String, dynamic> json) =>
    _$BonusModelImpl(
      emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
      salary_month: json['salary_month'] as String? ?? "",
      bonus_type: json['bonus_type'] as String? ?? "",
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      note: json['note'] as String? ?? "",
    );

Map<String, dynamic> _$$BonusModelImplToJson(_$BonusModelImpl instance) =>
    <String, dynamic>{
      'emp_id': instance.emp_id,
      'salary_month': instance.salary_month,
      'bonus_type': instance.bonus_type,
      'amount': instance.amount,
      'note': instance.note,
    };
