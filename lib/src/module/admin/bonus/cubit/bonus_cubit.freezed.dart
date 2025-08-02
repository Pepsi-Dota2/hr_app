// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BonusState {
  Status get status => throw _privateConstructorUsedError;

  /// Create a copy of BonusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BonusStateCopyWith<BonusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusStateCopyWith<$Res> {
  factory $BonusStateCopyWith(
    BonusState value,
    $Res Function(BonusState) then,
  ) = _$BonusStateCopyWithImpl<$Res, BonusState>;
  @useResult
  $Res call({Status status});
}

/// @nodoc
class _$BonusStateCopyWithImpl<$Res, $Val extends BonusState>
    implements $BonusStateCopyWith<$Res> {
  _$BonusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BonusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BonusStateImplCopyWith<$Res>
    implements $BonusStateCopyWith<$Res> {
  factory _$$BonusStateImplCopyWith(
    _$BonusStateImpl value,
    $Res Function(_$BonusStateImpl) then,
  ) = __$$BonusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status});
}

/// @nodoc
class __$$BonusStateImplCopyWithImpl<$Res>
    extends _$BonusStateCopyWithImpl<$Res, _$BonusStateImpl>
    implements _$$BonusStateImplCopyWith<$Res> {
  __$$BonusStateImplCopyWithImpl(
    _$BonusStateImpl _value,
    $Res Function(_$BonusStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BonusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$BonusStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
      ),
    );
  }
}

/// @nodoc

class _$BonusStateImpl implements _BonusState {
  const _$BonusStateImpl({this.status = Status.initial});

  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'BonusState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BonusStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of BonusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BonusStateImplCopyWith<_$BonusStateImpl> get copyWith =>
      __$$BonusStateImplCopyWithImpl<_$BonusStateImpl>(this, _$identity);
}

abstract class _BonusState implements BonusState {
  const factory _BonusState({final Status status}) = _$BonusStateImpl;

  @override
  Status get status;

  /// Create a copy of BonusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BonusStateImplCopyWith<_$BonusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
