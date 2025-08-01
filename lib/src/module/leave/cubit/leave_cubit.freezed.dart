// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LeaveState {
  Status get status => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveStateCopyWith<LeaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveStateCopyWith<$Res> {
  factory $LeaveStateCopyWith(
    LeaveState value,
    $Res Function(LeaveState) then,
  ) = _$LeaveStateCopyWithImpl<$Res, LeaveState>;
  @useResult
  $Res call({Status status, dynamic image});
}

/// @nodoc
class _$LeaveStateCopyWithImpl<$Res, $Val extends LeaveState>
    implements $LeaveStateCopyWith<$Res> {
  _$LeaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? image = freezed}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaveStateImplCopyWith<$Res>
    implements $LeaveStateCopyWith<$Res> {
  factory _$$LeaveStateImplCopyWith(
    _$LeaveStateImpl value,
    $Res Function(_$LeaveStateImpl) then,
  ) = __$$LeaveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, dynamic image});
}

/// @nodoc
class __$$LeaveStateImplCopyWithImpl<$Res>
    extends _$LeaveStateCopyWithImpl<$Res, _$LeaveStateImpl>
    implements _$$LeaveStateImplCopyWith<$Res> {
  __$$LeaveStateImplCopyWithImpl(
    _$LeaveStateImpl _value,
    $Res Function(_$LeaveStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? image = freezed}) {
    return _then(
      _$LeaveStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        image: freezed == image ? _value.image! : image,
      ),
    );
  }
}

/// @nodoc

class _$LeaveStateImpl implements _LeaveState {
  const _$LeaveStateImpl({this.status = Status.initial, this.image = ""});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final dynamic image;

  @override
  String toString() {
    return 'LeaveState(status: $status, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(image),
  );

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      __$$LeaveStateImplCopyWithImpl<_$LeaveStateImpl>(this, _$identity);
}

abstract class _LeaveState implements LeaveState {
  const factory _LeaveState({final Status status, final dynamic image}) =
      _$LeaveStateImpl;

  @override
  Status get status;
  @override
  dynamic get image;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
