// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) {
  return _DepartmentModel.fromJson(json);
}

/// @nodoc
mixin _$DepartmentModel {
  int get department_id => throw _privateConstructorUsedError;
  String get department_name => throw _privateConstructorUsedError;
  String get department_code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get manager_emp_id => throw _privateConstructorUsedError;

  /// Serializes this DepartmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentModelCopyWith<DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentModelCopyWith<$Res> {
  factory $DepartmentModelCopyWith(
    DepartmentModel value,
    $Res Function(DepartmentModel) then,
  ) = _$DepartmentModelCopyWithImpl<$Res, DepartmentModel>;
  @useResult
  $Res call({
    int department_id,
    String department_name,
    String department_code,
    String description,
    String manager_emp_id,
  });
}

/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res, $Val extends DepartmentModel>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department_id = null,
    Object? department_name = null,
    Object? department_code = null,
    Object? description = null,
    Object? manager_emp_id = null,
  }) {
    return _then(
      _value.copyWith(
            department_id: null == department_id
                ? _value.department_id
                : department_id // ignore: cast_nullable_to_non_nullable
                      as int,
            department_name: null == department_name
                ? _value.department_name
                : department_name // ignore: cast_nullable_to_non_nullable
                      as String,
            department_code: null == department_code
                ? _value.department_code
                : department_code // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            manager_emp_id: null == manager_emp_id
                ? _value.manager_emp_id
                : manager_emp_id // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DepartmentModelImplCopyWith<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  factory _$$DepartmentModelImplCopyWith(
    _$DepartmentModelImpl value,
    $Res Function(_$DepartmentModelImpl) then,
  ) = __$$DepartmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int department_id,
    String department_name,
    String department_code,
    String description,
    String manager_emp_id,
  });
}

/// @nodoc
class __$$DepartmentModelImplCopyWithImpl<$Res>
    extends _$DepartmentModelCopyWithImpl<$Res, _$DepartmentModelImpl>
    implements _$$DepartmentModelImplCopyWith<$Res> {
  __$$DepartmentModelImplCopyWithImpl(
    _$DepartmentModelImpl _value,
    $Res Function(_$DepartmentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department_id = null,
    Object? department_name = null,
    Object? department_code = null,
    Object? description = null,
    Object? manager_emp_id = null,
  }) {
    return _then(
      _$DepartmentModelImpl(
        department_id: null == department_id
            ? _value.department_id
            : department_id // ignore: cast_nullable_to_non_nullable
                  as int,
        department_name: null == department_name
            ? _value.department_name
            : department_name // ignore: cast_nullable_to_non_nullable
                  as String,
        department_code: null == department_code
            ? _value.department_code
            : department_code // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        manager_emp_id: null == manager_emp_id
            ? _value.manager_emp_id
            : manager_emp_id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentModelImpl implements _DepartmentModel {
  const _$DepartmentModelImpl({
    this.department_id = 0,
    this.department_name = "",
    this.department_code = "",
    this.description = "",
    this.manager_emp_id = "",
  });

  factory _$DepartmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentModelImplFromJson(json);

  @override
  @JsonKey()
  final int department_id;
  @override
  @JsonKey()
  final String department_name;
  @override
  @JsonKey()
  final String department_code;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String manager_emp_id;

  @override
  String toString() {
    return 'DepartmentModel(department_id: $department_id, department_name: $department_name, department_code: $department_code, description: $description, manager_emp_id: $manager_emp_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentModelImpl &&
            (identical(other.department_id, department_id) ||
                other.department_id == department_id) &&
            (identical(other.department_name, department_name) ||
                other.department_name == department_name) &&
            (identical(other.department_code, department_code) ||
                other.department_code == department_code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.manager_emp_id, manager_emp_id) ||
                other.manager_emp_id == manager_emp_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    department_id,
    department_name,
    department_code,
    description,
    manager_emp_id,
  );

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentModelImplCopyWith<_$DepartmentModelImpl> get copyWith =>
      __$$DepartmentModelImplCopyWithImpl<_$DepartmentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentModelImplToJson(this);
  }
}

abstract class _DepartmentModel implements DepartmentModel {
  const factory _DepartmentModel({
    final int department_id,
    final String department_name,
    final String department_code,
    final String description,
    final String manager_emp_id,
  }) = _$DepartmentModelImpl;

  factory _DepartmentModel.fromJson(Map<String, dynamic> json) =
      _$DepartmentModelImpl.fromJson;

  @override
  int get department_id;
  @override
  String get department_name;
  @override
  String get department_code;
  @override
  String get description;
  @override
  String get manager_emp_id;

  /// Create a copy of DepartmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentModelImplCopyWith<_$DepartmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
