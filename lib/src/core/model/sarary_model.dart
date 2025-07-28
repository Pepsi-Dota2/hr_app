import 'package:freezed_annotation/freezed_annotation.dart';

part 'sarary_model.freezed.dart';
part 'sarary_model.g.dart';

@freezed
class SararyModel with _$SararyModel {
  const factory SararyModel({@Default(0) int emp_id, @Default(0) int current_salary, @Default(0) int net_salary}) = _SararyModel;
  factory SararyModel.fromJson(Map<String, dynamic> json) => _$SararyModelFromJson(json);
}
