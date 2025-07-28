// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentModelImpl _$$DepartmentModelImplFromJson(
  Map<String, dynamic> json,
) => _$DepartmentModelImpl(
  department_name: json['department_name'] as String? ?? "",
  department_code: json['department_code'] as String? ?? "",
  description: json['description'] as String? ?? "",
  manager_emp_id: json['manager_emp_id'] as String? ?? "",
);

Map<String, dynamic> _$$DepartmentModelImplToJson(
  _$DepartmentModelImpl instance,
) => <String, dynamic>{
  'department_name': instance.department_name,
  'department_code': instance.department_code,
  'description': instance.description,
  'manager_emp_id': instance.manager_emp_id,
};
