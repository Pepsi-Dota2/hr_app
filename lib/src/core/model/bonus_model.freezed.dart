// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BonusModel _$BonusModelFromJson(Map<String, dynamic> json) {
  return _BonusModel.fromJson(json);
}

/// @nodoc
mixin _$BonusModel {
  int get emp_id => throw _privateConstructorUsedError;
  String get salary_month => throw _privateConstructorUsedError;
  String get bonus_type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this BonusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BonusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BonusModelCopyWith<BonusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusModelCopyWith<$Res> {
  factory $BonusModelCopyWith(
    BonusModel value,
    $Res Function(BonusModel) then,
  ) = _$BonusModelCopyWithImpl<$Res, BonusModel>;
  @useResult
  $Res call({
    int emp_id,
    String salary_month,
    String bonus_type,
    int amount,
    String note,
  });
}

/// @nodoc
class _$BonusModelCopyWithImpl<$Res, $Val extends BonusModel>
    implements $BonusModelCopyWith<$Res> {
  _$BonusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BonusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? salary_month = null,
    Object? bonus_type = null,
    Object? amount = null,
    Object? note = null,
  }) {
    return _then(
      _value.copyWith(
            emp_id: null == emp_id
                ? _value.emp_id
                : emp_id // ignore: cast_nullable_to_non_nullable
                      as int,
            salary_month: null == salary_month
                ? _value.salary_month
                : salary_month // ignore: cast_nullable_to_non_nullable
                      as String,
            bonus_type: null == bonus_type
                ? _value.bonus_type
                : bonus_type // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BonusModelImplCopyWith<$Res>
    implements $BonusModelCopyWith<$Res> {
  factory _$$BonusModelImplCopyWith(
    _$BonusModelImpl value,
    $Res Function(_$BonusModelImpl) then,
  ) = __$$BonusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int emp_id,
    String salary_month,
    String bonus_type,
    int amount,
    String note,
  });
}

/// @nodoc
class __$$BonusModelImplCopyWithImpl<$Res>
    extends _$BonusModelCopyWithImpl<$Res, _$BonusModelImpl>
    implements _$$BonusModelImplCopyWith<$Res> {
  __$$BonusModelImplCopyWithImpl(
    _$BonusModelImpl _value,
    $Res Function(_$BonusModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BonusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? salary_month = null,
    Object? bonus_type = null,
    Object? amount = null,
    Object? note = null,
  }) {
    return _then(
      _$BonusModelImpl(
        emp_id: null == emp_id
            ? _value.emp_id
            : emp_id // ignore: cast_nullable_to_non_nullable
                  as int,
        salary_month: null == salary_month
            ? _value.salary_month
            : salary_month // ignore: cast_nullable_to_non_nullable
                  as String,
        bonus_type: null == bonus_type
            ? _value.bonus_type
            : bonus_type // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BonusModelImpl implements _BonusModel {
  const _$BonusModelImpl({
    this.emp_id = 0,
    this.salary_month = "",
    this.bonus_type = "",
    this.amount = 0,
    this.note = "",
  });

  factory _$BonusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BonusModelImplFromJson(json);

  @override
  @JsonKey()
  final int emp_id;
  @override
  @JsonKey()
  final String salary_month;
  @override
  @JsonKey()
  final String bonus_type;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String note;

  @override
  String toString() {
    return 'BonusModel(emp_id: $emp_id, salary_month: $salary_month, bonus_type: $bonus_type, amount: $amount, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BonusModelImpl &&
            (identical(other.emp_id, emp_id) || other.emp_id == emp_id) &&
            (identical(other.salary_month, salary_month) ||
                other.salary_month == salary_month) &&
            (identical(other.bonus_type, bonus_type) ||
                other.bonus_type == bonus_type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, emp_id, salary_month, bonus_type, amount, note);

  /// Create a copy of BonusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BonusModelImplCopyWith<_$BonusModelImpl> get copyWith =>
      __$$BonusModelImplCopyWithImpl<_$BonusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BonusModelImplToJson(this);
  }
}

abstract class _BonusModel implements BonusModel {
  const factory _BonusModel({
    final int emp_id,
    final String salary_month,
    final String bonus_type,
    final int amount,
    final String note,
  }) = _$BonusModelImpl;

  factory _BonusModel.fromJson(Map<String, dynamic> json) =
      _$BonusModelImpl.fromJson;

  @override
  int get emp_id;
  @override
  String get salary_month;
  @override
  String get bonus_type;
  @override
  int get amount;
  @override
  String get note;

  /// Create a copy of BonusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BonusModelImplCopyWith<_$BonusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
