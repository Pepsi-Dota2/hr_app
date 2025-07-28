// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sarary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SararyModel _$SararyModelFromJson(Map<String, dynamic> json) {
  return _SararyModel.fromJson(json);
}

/// @nodoc
mixin _$SararyModel {
  int get emp_id => throw _privateConstructorUsedError;
  int get current_salary => throw _privateConstructorUsedError;
  int get net_salary => throw _privateConstructorUsedError;

  /// Serializes this SararyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SararyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SararyModelCopyWith<SararyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SararyModelCopyWith<$Res> {
  factory $SararyModelCopyWith(
    SararyModel value,
    $Res Function(SararyModel) then,
  ) = _$SararyModelCopyWithImpl<$Res, SararyModel>;
  @useResult
  $Res call({int emp_id, int current_salary, int net_salary});
}

/// @nodoc
class _$SararyModelCopyWithImpl<$Res, $Val extends SararyModel>
    implements $SararyModelCopyWith<$Res> {
  _$SararyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SararyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? current_salary = null,
    Object? net_salary = null,
  }) {
    return _then(
      _value.copyWith(
            emp_id: null == emp_id
                ? _value.emp_id
                : emp_id // ignore: cast_nullable_to_non_nullable
                      as int,
            current_salary: null == current_salary
                ? _value.current_salary
                : current_salary // ignore: cast_nullable_to_non_nullable
                      as int,
            net_salary: null == net_salary
                ? _value.net_salary
                : net_salary // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SararyModelImplCopyWith<$Res>
    implements $SararyModelCopyWith<$Res> {
  factory _$$SararyModelImplCopyWith(
    _$SararyModelImpl value,
    $Res Function(_$SararyModelImpl) then,
  ) = __$$SararyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int emp_id, int current_salary, int net_salary});
}

/// @nodoc
class __$$SararyModelImplCopyWithImpl<$Res>
    extends _$SararyModelCopyWithImpl<$Res, _$SararyModelImpl>
    implements _$$SararyModelImplCopyWith<$Res> {
  __$$SararyModelImplCopyWithImpl(
    _$SararyModelImpl _value,
    $Res Function(_$SararyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SararyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? current_salary = null,
    Object? net_salary = null,
  }) {
    return _then(
      _$SararyModelImpl(
        emp_id: null == emp_id
            ? _value.emp_id
            : emp_id // ignore: cast_nullable_to_non_nullable
                  as int,
        current_salary: null == current_salary
            ? _value.current_salary
            : current_salary // ignore: cast_nullable_to_non_nullable
                  as int,
        net_salary: null == net_salary
            ? _value.net_salary
            : net_salary // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SararyModelImpl implements _SararyModel {
  const _$SararyModelImpl({
    this.emp_id = 0,
    this.current_salary = 0,
    this.net_salary = 0,
  });

  factory _$SararyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SararyModelImplFromJson(json);

  @override
  @JsonKey()
  final int emp_id;
  @override
  @JsonKey()
  final int current_salary;
  @override
  @JsonKey()
  final int net_salary;

  @override
  String toString() {
    return 'SararyModel(emp_id: $emp_id, current_salary: $current_salary, net_salary: $net_salary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SararyModelImpl &&
            (identical(other.emp_id, emp_id) || other.emp_id == emp_id) &&
            (identical(other.current_salary, current_salary) ||
                other.current_salary == current_salary) &&
            (identical(other.net_salary, net_salary) ||
                other.net_salary == net_salary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, emp_id, current_salary, net_salary);

  /// Create a copy of SararyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SararyModelImplCopyWith<_$SararyModelImpl> get copyWith =>
      __$$SararyModelImplCopyWithImpl<_$SararyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SararyModelImplToJson(this);
  }
}

abstract class _SararyModel implements SararyModel {
  const factory _SararyModel({
    final int emp_id,
    final int current_salary,
    final int net_salary,
  }) = _$SararyModelImpl;

  factory _SararyModel.fromJson(Map<String, dynamic> json) =
      _$SararyModelImpl.fromJson;

  @override
  int get emp_id;
  @override
  int get current_salary;
  @override
  int get net_salary;

  /// Create a copy of SararyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SararyModelImplCopyWith<_$SararyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
