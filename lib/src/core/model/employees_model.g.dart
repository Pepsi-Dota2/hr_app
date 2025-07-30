// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeesModelImpl _$$EmployeesModelImplFromJson(Map<String, dynamic> json) =>
    _$EmployeesModelImpl(
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      emp_name: json['emp_name'] as String? ?? "",
      emp_department_id: (json['emp_department_id'] as num?)?.toInt() ?? 0,
      emp_position_id: (json['emp_position_id'] as num?)?.toInt() ?? 0,
      emp_email: json['emp_email'] as String? ?? "",
      emp_tel: json['emp_tel'] as String? ?? "",
      emp_birth_date: json['emp_birth_date'] as String? ?? "",
      position_name: json['position_name'] as String? ?? "",
      position_salary: (json['position_salary'] as num?)?.toInt() ?? 0,
      department_name: json['department_name'] as String? ?? "",
      department_code: json['department_code'] as String? ?? "",
      emp_gender: json['emp_gender'] as String? ?? "",
      emp_religion: json['emp_religion'] as String? ?? "",
      emp_bank_account: json['emp_bank_account'] as String? ?? "",
      emp_img: json['emp_img'] as String? ?? "",
      created_at: json['created_at'] as String? ?? "",
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
  'position_name': instance.position_name,
  'position_salary': instance.position_salary,
  'department_name': instance.department_name,
  'department_code': instance.department_code,
  'emp_gender': instance.emp_gender,
  'emp_religion': instance.emp_religion,
  'emp_bank_account': instance.emp_bank_account,
  'emp_img': instance.emp_img,
  'created_at': instance.created_at,
};
