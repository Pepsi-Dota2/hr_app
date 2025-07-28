// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalaryHistoryModelImpl _$$SalaryHistoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$SalaryHistoryModelImpl(
  emp_id: (json['emp_id'] as num?)?.toInt() ?? 0,
  base_salary: (json['base_salary'] as num?)?.toInt() ?? 0,
  bonus: (json['bonus'] as num?)?.toInt() ?? 0,
  allowance: (json['allowance'] as num?)?.toInt() ?? 0,
  ot_payment: (json['ot_payment'] as num?)?.toInt() ?? 0,
  deduction: (json['deduction'] as num?)?.toInt() ?? 0,
  net_salary: (json['net_salary'] as num?)?.toInt() ?? 0,
  salary_month: json['salary_month'] as String? ?? "",
);

Map<String, dynamic> _$$SalaryHistoryModelImplToJson(
  _$SalaryHistoryModelImpl instance,
) => <String, dynamic>{
  'emp_id': instance.emp_id,
  'base_salary': instance.base_salary,
  'bonus': instance.bonus,
  'allowance': instance.allowance,
  'ot_payment': instance.ot_payment,
  'deduction': instance.deduction,
  'net_salary': instance.net_salary,
  'salary_month': instance.salary_month,
};
