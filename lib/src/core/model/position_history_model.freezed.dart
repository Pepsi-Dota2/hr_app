// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PositionHistoryModel _$PositionHistoryModelFromJson(Map<String, dynamic> json) {
  return _PositionHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PositionHistoryModel {
  int get emp_id => throw _privateConstructorUsedError;
  int get position_id => throw _privateConstructorUsedError;
  String get start_date => throw _privateConstructorUsedError;
  String get end_date => throw _privateConstructorUsedError;

  /// Serializes this PositionHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionHistoryModelCopyWith<PositionHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionHistoryModelCopyWith<$Res> {
  factory $PositionHistoryModelCopyWith(
    PositionHistoryModel value,
    $Res Function(PositionHistoryModel) then,
  ) = _$PositionHistoryModelCopyWithImpl<$Res, PositionHistoryModel>;
  @useResult
  $Res call({int emp_id, int position_id, String start_date, String end_date});
}

/// @nodoc
class _$PositionHistoryModelCopyWithImpl<
  $Res,
  $Val extends PositionHistoryModel
>
    implements $PositionHistoryModelCopyWith<$Res> {
  _$PositionHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? position_id = null,
    Object? start_date = null,
    Object? end_date = null,
  }) {
    return _then(
      _value.copyWith(
            emp_id: null == emp_id
                ? _value.emp_id
                : emp_id // ignore: cast_nullable_to_non_nullable
                      as int,
            position_id: null == position_id
                ? _value.position_id
                : position_id // ignore: cast_nullable_to_non_nullable
                      as int,
            start_date: null == start_date
                ? _value.start_date
                : start_date // ignore: cast_nullable_to_non_nullable
                      as String,
            end_date: null == end_date
                ? _value.end_date
                : end_date // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PositionHistoryModelImplCopyWith<$Res>
    implements $PositionHistoryModelCopyWith<$Res> {
  factory _$$PositionHistoryModelImplCopyWith(
    _$PositionHistoryModelImpl value,
    $Res Function(_$PositionHistoryModelImpl) then,
  ) = __$$PositionHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int emp_id, int position_id, String start_date, String end_date});
}

/// @nodoc
class __$$PositionHistoryModelImplCopyWithImpl<$Res>
    extends _$PositionHistoryModelCopyWithImpl<$Res, _$PositionHistoryModelImpl>
    implements _$$PositionHistoryModelImplCopyWith<$Res> {
  __$$PositionHistoryModelImplCopyWithImpl(
    _$PositionHistoryModelImpl _value,
    $Res Function(_$PositionHistoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PositionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? position_id = null,
    Object? start_date = null,
    Object? end_date = null,
  }) {
    return _then(
      _$PositionHistoryModelImpl(
        emp_id: null == emp_id
            ? _value.emp_id
            : emp_id // ignore: cast_nullable_to_non_nullable
                  as int,
        position_id: null == position_id
            ? _value.position_id
            : position_id // ignore: cast_nullable_to_non_nullable
                  as int,
        start_date: null == start_date
            ? _value.start_date
            : start_date // ignore: cast_nullable_to_non_nullable
                  as String,
        end_date: null == end_date
            ? _value.end_date
            : end_date // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionHistoryModelImpl implements _PositionHistoryModel {
  const _$PositionHistoryModelImpl({
    this.emp_id = 0,
    this.position_id = 0,
    this.start_date = '',
    this.end_date = '',
  });

  factory _$PositionHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionHistoryModelImplFromJson(json);

  @override
  @JsonKey()
  final int emp_id;
  @override
  @JsonKey()
  final int position_id;
  @override
  @JsonKey()
  final String start_date;
  @override
  @JsonKey()
  final String end_date;

  @override
  String toString() {
    return 'PositionHistoryModel(emp_id: $emp_id, position_id: $position_id, start_date: $start_date, end_date: $end_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionHistoryModelImpl &&
            (identical(other.emp_id, emp_id) || other.emp_id == emp_id) &&
            (identical(other.position_id, position_id) ||
                other.position_id == position_id) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, emp_id, position_id, start_date, end_date);

  /// Create a copy of PositionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionHistoryModelImplCopyWith<_$PositionHistoryModelImpl>
  get copyWith =>
      __$$PositionHistoryModelImplCopyWithImpl<_$PositionHistoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionHistoryModelImplToJson(this);
  }
}

abstract class _PositionHistoryModel implements PositionHistoryModel {
  const factory _PositionHistoryModel({
    final int emp_id,
    final int position_id,
    final String start_date,
    final String end_date,
  }) = _$PositionHistoryModelImpl;

  factory _PositionHistoryModel.fromJson(Map<String, dynamic> json) =
      _$PositionHistoryModelImpl.fromJson;

  @override
  int get emp_id;
  @override
  int get position_id;
  @override
  String get start_date;
  @override
  String get end_date;

  /// Create a copy of PositionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionHistoryModelImplCopyWith<_$PositionHistoryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
