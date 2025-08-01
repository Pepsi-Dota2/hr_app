// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaveadmin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LeaveadminState {
  Status get status => throw _privateConstructorUsedError;
  List<LeaveModel> get leave => throw _privateConstructorUsedError;

  /// Create a copy of LeaveadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveadminStateCopyWith<LeaveadminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveadminStateCopyWith<$Res> {
  factory $LeaveadminStateCopyWith(
    LeaveadminState value,
    $Res Function(LeaveadminState) then,
  ) = _$LeaveadminStateCopyWithImpl<$Res, LeaveadminState>;
  @useResult
  $Res call({Status status, List<LeaveModel> leave});
}

/// @nodoc
class _$LeaveadminStateCopyWithImpl<$Res, $Val extends LeaveadminState>
    implements $LeaveadminStateCopyWith<$Res> {
  _$LeaveadminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? leave = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            leave: null == leave
                ? _value.leave
                : leave // ignore: cast_nullable_to_non_nullable
                      as List<LeaveModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaveadminStateImplCopyWith<$Res>
    implements $LeaveadminStateCopyWith<$Res> {
  factory _$$LeaveadminStateImplCopyWith(
    _$LeaveadminStateImpl value,
    $Res Function(_$LeaveadminStateImpl) then,
  ) = __$$LeaveadminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<LeaveModel> leave});
}

/// @nodoc
class __$$LeaveadminStateImplCopyWithImpl<$Res>
    extends _$LeaveadminStateCopyWithImpl<$Res, _$LeaveadminStateImpl>
    implements _$$LeaveadminStateImplCopyWith<$Res> {
  __$$LeaveadminStateImplCopyWithImpl(
    _$LeaveadminStateImpl _value,
    $Res Function(_$LeaveadminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaveadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? leave = null}) {
    return _then(
      _$LeaveadminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        leave: null == leave
            ? _value._leave
            : leave // ignore: cast_nullable_to_non_nullable
                  as List<LeaveModel>,
      ),
    );
  }
}

/// @nodoc

class _$LeaveadminStateImpl implements _LeaveadminState {
  const _$LeaveadminStateImpl({
    this.status = Status.initial,
    final List<LeaveModel> leave = const [],
  }) : _leave = leave;

  @override
  @JsonKey()
  final Status status;
  final List<LeaveModel> _leave;
  @override
  @JsonKey()
  List<LeaveModel> get leave {
    if (_leave is EqualUnmodifiableListView) return _leave;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leave);
  }

  @override
  String toString() {
    return 'LeaveadminState(status: $status, leave: $leave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._leave, _leave));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_leave),
  );

  /// Create a copy of LeaveadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveadminStateImplCopyWith<_$LeaveadminStateImpl> get copyWith =>
      __$$LeaveadminStateImplCopyWithImpl<_$LeaveadminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LeaveadminState implements LeaveadminState {
  const factory _LeaveadminState({
    final Status status,
    final List<LeaveModel> leave,
  }) = _$LeaveadminStateImpl;

  @override
  Status get status;
  @override
  List<LeaveModel> get leave;

  /// Create a copy of LeaveadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveadminStateImplCopyWith<_$LeaveadminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
