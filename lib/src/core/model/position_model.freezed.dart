// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PositionModel _$PositionModelFromJson(Map<String, dynamic> json) {
  return _PositionModel.fromJson(json);
}

/// @nodoc
mixin _$PositionModel {
  int get position_id => throw _privateConstructorUsedError;
  String get position_name => throw _privateConstructorUsedError;
  int get position_salary => throw _privateConstructorUsedError;

  /// Serializes this PositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionModelCopyWith<PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionModelCopyWith<$Res> {
  factory $PositionModelCopyWith(
    PositionModel value,
    $Res Function(PositionModel) then,
  ) = _$PositionModelCopyWithImpl<$Res, PositionModel>;
  @useResult
  $Res call({int position_id, String position_name, int position_salary});
}

/// @nodoc
class _$PositionModelCopyWithImpl<$Res, $Val extends PositionModel>
    implements $PositionModelCopyWith<$Res> {
  _$PositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position_id = null,
    Object? position_name = null,
    Object? position_salary = null,
  }) {
    return _then(
      _value.copyWith(
            position_id: null == position_id
                ? _value.position_id
                : position_id // ignore: cast_nullable_to_non_nullable
                      as int,
            position_name: null == position_name
                ? _value.position_name
                : position_name // ignore: cast_nullable_to_non_nullable
                      as String,
            position_salary: null == position_salary
                ? _value.position_salary
                : position_salary // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PositionModelImplCopyWith<$Res>
    implements $PositionModelCopyWith<$Res> {
  factory _$$PositionModelImplCopyWith(
    _$PositionModelImpl value,
    $Res Function(_$PositionModelImpl) then,
  ) = __$$PositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position_id, String position_name, int position_salary});
}

/// @nodoc
class __$$PositionModelImplCopyWithImpl<$Res>
    extends _$PositionModelCopyWithImpl<$Res, _$PositionModelImpl>
    implements _$$PositionModelImplCopyWith<$Res> {
  __$$PositionModelImplCopyWithImpl(
    _$PositionModelImpl _value,
    $Res Function(_$PositionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position_id = null,
    Object? position_name = null,
    Object? position_salary = null,
  }) {
    return _then(
      _$PositionModelImpl(
        position_id: null == position_id
            ? _value.position_id
            : position_id // ignore: cast_nullable_to_non_nullable
                  as int,
        position_name: null == position_name
            ? _value.position_name
            : position_name // ignore: cast_nullable_to_non_nullable
                  as String,
        position_salary: null == position_salary
            ? _value.position_salary
            : position_salary // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionModelImpl implements _PositionModel {
  const _$PositionModelImpl({
    this.position_id = 0,
    this.position_name = "",
    this.position_salary = 0,
  });

  factory _$PositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionModelImplFromJson(json);

  @override
  @JsonKey()
  final int position_id;
  @override
  @JsonKey()
  final String position_name;
  @override
  @JsonKey()
  final int position_salary;

  @override
  String toString() {
    return 'PositionModel(position_id: $position_id, position_name: $position_name, position_salary: $position_salary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionModelImpl &&
            (identical(other.position_id, position_id) ||
                other.position_id == position_id) &&
            (identical(other.position_name, position_name) ||
                other.position_name == position_name) &&
            (identical(other.position_salary, position_salary) ||
                other.position_salary == position_salary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position_id, position_name, position_salary);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      __$$PositionModelImplCopyWithImpl<_$PositionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionModelImplToJson(this);
  }
}

abstract class _PositionModel implements PositionModel {
  const factory _PositionModel({
    final int position_id,
    final String position_name,
    final int position_salary,
  }) = _$PositionModelImpl;

  factory _PositionModel.fromJson(Map<String, dynamic> json) =
      _$PositionModelImpl.fromJson;

  @override
  int get position_id;
  @override
  String get position_name;
  @override
  int get position_salary;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
