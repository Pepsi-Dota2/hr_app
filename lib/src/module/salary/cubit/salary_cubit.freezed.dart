// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SalaryState {
  Status get status => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  List<SararyModel> get salary => throw _privateConstructorUsedError;

  /// Create a copy of SalaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalaryStateCopyWith<SalaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryStateCopyWith<$Res> {
  factory $SalaryStateCopyWith(
    SalaryState value,
    $Res Function(SalaryState) then,
  ) = _$SalaryStateCopyWithImpl<$Res, SalaryState>;
  @useResult
  $Res call({Status status, DateTime? date, List<SararyModel> salary});
}

/// @nodoc
class _$SalaryStateCopyWithImpl<$Res, $Val extends SalaryState>
    implements $SalaryStateCopyWith<$Res> {
  _$SalaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? date = freezed,
    Object? salary = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            salary: null == salary
                ? _value.salary
                : salary // ignore: cast_nullable_to_non_nullable
                      as List<SararyModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SalaryStateImplCopyWith<$Res>
    implements $SalaryStateCopyWith<$Res> {
  factory _$$SalaryStateImplCopyWith(
    _$SalaryStateImpl value,
    $Res Function(_$SalaryStateImpl) then,
  ) = __$$SalaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, DateTime? date, List<SararyModel> salary});
}

/// @nodoc
class __$$SalaryStateImplCopyWithImpl<$Res>
    extends _$SalaryStateCopyWithImpl<$Res, _$SalaryStateImpl>
    implements _$$SalaryStateImplCopyWith<$Res> {
  __$$SalaryStateImplCopyWithImpl(
    _$SalaryStateImpl _value,
    $Res Function(_$SalaryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? date = freezed,
    Object? salary = null,
  }) {
    return _then(
      _$SalaryStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        salary: null == salary
            ? _value._salary
            : salary // ignore: cast_nullable_to_non_nullable
                  as List<SararyModel>,
      ),
    );
  }
}

/// @nodoc

class _$SalaryStateImpl implements _SalaryState {
  const _$SalaryStateImpl({
    this.status = Status.initial,
    this.date,
    final List<SararyModel> salary = const [],
  }) : _salary = salary;

  @override
  @JsonKey()
  final Status status;
  @override
  final DateTime? date;
  final List<SararyModel> _salary;
  @override
  @JsonKey()
  List<SararyModel> get salary {
    if (_salary is EqualUnmodifiableListView) return _salary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salary);
  }

  @override
  String toString() {
    return 'SalaryState(status: $status, date: $date, salary: $salary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalaryStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._salary, _salary));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    date,
    const DeepCollectionEquality().hash(_salary),
  );

  /// Create a copy of SalaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalaryStateImplCopyWith<_$SalaryStateImpl> get copyWith =>
      __$$SalaryStateImplCopyWithImpl<_$SalaryStateImpl>(this, _$identity);
}

abstract class _SalaryState implements SalaryState {
  const factory _SalaryState({
    final Status status,
    final DateTime? date,
    final List<SararyModel> salary,
  }) = _$SalaryStateImpl;

  @override
  Status get status;
  @override
  DateTime? get date;
  @override
  List<SararyModel> get salary;

  /// Create a copy of SalaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalaryStateImplCopyWith<_$SalaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
