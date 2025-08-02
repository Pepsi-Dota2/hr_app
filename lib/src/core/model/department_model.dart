import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    @Default(0) int department_id,
    @Default("") String department_name,
    @Default("") String department_code,
    @Default("") String description,
    @Default("") String manager_emp_id,
  }) = _DepartmentModel;
  factory DepartmentModel.fromJson(Map<String, dynamic> json) => _$DepartmentModelFromJson(json);
}
