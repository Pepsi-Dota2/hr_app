// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deduction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeductionModel _$DeductionModelFromJson(Map<String, dynamic> json) {
  return _DeductionModel.fromJson(json);
}

/// @nodoc
mixin _$DeductionModel {
  int get emp_id => throw _privateConstructorUsedError;
  String get salary_month => throw _privateConstructorUsedError;
  String get deduction_type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  /// Serializes this DeductionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeductionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeductionModelCopyWith<DeductionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeductionModelCopyWith<$Res> {
  factory $DeductionModelCopyWith(
    DeductionModel value,
    $Res Function(DeductionModel) then,
  ) = _$DeductionModelCopyWithImpl<$Res, DeductionModel>;
  @useResult
  $Res call({
    int emp_id,
    String salary_month,
    String deduction_type,
    int amount,
    String note,
    String created_at,
  });
}

/// @nodoc
class _$DeductionModelCopyWithImpl<$Res, $Val extends DeductionModel>
    implements $DeductionModelCopyWith<$Res> {
  _$DeductionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeductionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? salary_month = null,
    Object? deduction_type = null,
    Object? amount = null,
    Object? note = null,
    Object? created_at = null,
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
            deduction_type: null == deduction_type
                ? _value.deduction_type
                : deduction_type // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
            created_at: null == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeductionModelImplCopyWith<$Res>
    implements $DeductionModelCopyWith<$Res> {
  factory _$$DeductionModelImplCopyWith(
    _$DeductionModelImpl value,
    $Res Function(_$DeductionModelImpl) then,
  ) = __$$DeductionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int emp_id,
    String salary_month,
    String deduction_type,
    int amount,
    String note,
    String created_at,
  });
}

/// @nodoc
class __$$DeductionModelImplCopyWithImpl<$Res>
    extends _$DeductionModelCopyWithImpl<$Res, _$DeductionModelImpl>
    implements _$$DeductionModelImplCopyWith<$Res> {
  __$$DeductionModelImplCopyWithImpl(
    _$DeductionModelImpl _value,
    $Res Function(_$DeductionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeductionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? salary_month = null,
    Object? deduction_type = null,
    Object? amount = null,
    Object? note = null,
    Object? created_at = null,
  }) {
    return _then(
      _$DeductionModelImpl(
        emp_id: null == emp_id
            ? _value.emp_id
            : emp_id // ignore: cast_nullable_to_non_nullable
                  as int,
        salary_month: null == salary_month
            ? _value.salary_month
            : salary_month // ignore: cast_nullable_to_non_nullable
                  as String,
        deduction_type: null == deduction_type
            ? _value.deduction_type
            : deduction_type // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
        created_at: null == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeductionModelImpl implements _DeductionModel {
  const _$DeductionModelImpl({
    this.emp_id = 0,
    this.salary_month = '',
    this.deduction_type = '',
    this.amount = 0,
    this.note = "",
    this.created_at = "",
  });

  factory _$DeductionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeductionModelImplFromJson(json);

  @override
  @JsonKey()
  final int emp_id;
  @override
  @JsonKey()
  final String salary_month;
  @override
  @JsonKey()
  final String deduction_type;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String note;
  @override
  @JsonKey()
  final String created_at;

  @override
  String toString() {
    return 'DeductionModel(emp_id: $emp_id, salary_month: $salary_month, deduction_type: $deduction_type, amount: $amount, note: $note, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeductionModelImpl &&
            (identical(other.emp_id, emp_id) || other.emp_id == emp_id) &&
            (identical(other.salary_month, salary_month) ||
                other.salary_month == salary_month) &&
            (identical(other.deduction_type, deduction_type) ||
                other.deduction_type == deduction_type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    emp_id,
    salary_month,
    deduction_type,
    amount,
    note,
    created_at,
  );

  /// Create a copy of DeductionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeductionModelImplCopyWith<_$DeductionModelImpl> get copyWith =>
      __$$DeductionModelImplCopyWithImpl<_$DeductionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeductionModelImplToJson(this);
  }
}

abstract class _DeductionModel implements DeductionModel {
  const factory _DeductionModel({
    final int emp_id,
    final String salary_month,
    final String deduction_type,
    final int amount,
    final String note,
    final String created_at,
  }) = _$DeductionModelImpl;

  factory _DeductionModel.fromJson(Map<String, dynamic> json) =
      _$DeductionModelImpl.fromJson;

  @override
  int get emp_id;
  @override
  String get salary_month;
  @override
  String get deduction_type;
  @override
  int get amount;
  @override
  String get note;
  @override
  String get created_at;

  /// Create a copy of DeductionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeductionModelImplCopyWith<_$DeductionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
