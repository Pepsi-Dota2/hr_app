// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deduction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeductionModelImpl _$$DeductionModelImplFromJson(Map<String, dynamic> json) =>
    _$DeductionModelImpl(
      emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
      salary_month: json['salary_month'] as String? ?? '',
      deduction_type: json['deduction_type'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      note: json['note'] as String? ?? "",
    );

Map<String, dynamic> _$$DeductionModelImplToJson(
  _$DeductionModelImpl instance,
) => <String, dynamic>{
  'emp_id': instance.emp_id,
  'salary_month': instance.salary_month,
  'deduction_type': instance.deduction_type,
  'amount': instance.amount,
  'note': instance.note,
};
