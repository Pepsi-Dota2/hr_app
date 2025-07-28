import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_model.freezed.dart';
part 'employees_model.g.dart';

@freezed
class EmployeesModel with _$EmployeesModel {
  const factory EmployeesModel({
    @Default(0) int user_id,
    @Default('') String emp_name,
    @Default(0) int emp_department_id,
    @Default(0) int emp_position_id,
    @Default("") String emp_email,
    @Default("") String emp_tel,
    @Default("") String emp_birth_date,
  }) = _EmployeesModel;
  factory EmployeesModel.fromJson(Map<String, dynamic> json) => _$EmployeesModelFromJson(json);
}
