// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeesModelImpl _$$EmployeesModelImplFromJson(Map<String, dynamic> json) =>
    _$EmployeesModelImpl(
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      emp_name: json['emp_name'] as String? ?? '',
      emp_department_id: (json['emp_department_id'] as num?)?.toInt() ?? 0,
      emp_position_id: (json['emp_position_id'] as num?)?.toInt() ?? 0,
      emp_email: json['emp_email'] as String? ?? "",
      emp_tel: json['emp_tel'] as String? ?? "",
      emp_birth_date: json['emp_birth_date'] as String? ?? "",
    );

Map<String, dynamic> _$$EmployeesModelImplToJson(
  _$EmployeesModelImpl instance,
) => <String, dynamic>{
  'user_id': instance.user_id,
  'emp_name': instance.emp_name,
  'emp_department_id': instance.emp_department_id,
  'emp_position_id': instance.emp_position_id,
  'emp_email': instance.emp_email,
  'emp_tel': instance.emp_tel,
  'emp_birth_date': instance.emp_birth_date,
};
