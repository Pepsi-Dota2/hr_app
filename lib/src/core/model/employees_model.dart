import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_model.freezed.dart';
part 'employees_model.g.dart';

@freezed
class EmployeesModel with _$EmployeesModel {
  const factory EmployeesModel({
    @Default(0) int user_id,
    @Default("") String emp_name,
    @Default(0) int emp_department_id,
    @Default(0) int emp_position_id,
    @Default("") String emp_email,
    @Default("") String emp_tel,
    @Default("") String emp_birth_date,
    @Default("") String position_name,
    @Default(0) int position_salary,
    @Default("") String department_name,
    @Default("") String department_code,
    @Default("") String emp_gender,
    @Default("") String emp_religion,
    @Default("") String emp_bank_account,
    @Default("") String emp_img,
    @Default("") String created_at,
  }) = _EmployeesModel;
  factory EmployeesModel.fromJson(Map<String, dynamic> json) => _$EmployeesModelFromJson(json);
}
