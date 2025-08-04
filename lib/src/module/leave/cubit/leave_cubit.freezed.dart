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
  LeaveModel? get leave => throw _privateConstructorUsedError;
  List<LeaveModel> get leaves => throw _privateConstructorUsedError;

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
  $Res call({
    Status status,
    dynamic image,
    LeaveModel? leave,
    List<LeaveModel> leaves,
  });

  $LeaveModelCopyWith<$Res>? get leave;
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
  $Res call({
    Object? status = null,
    Object? image = freezed,
    Object? leave = freezed,
    Object? leaves = null,
  }) {
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
            leave: freezed == leave
                ? _value.leave
                : leave // ignore: cast_nullable_to_non_nullable
                      as LeaveModel?,
            leaves: null == leaves
                ? _value.leaves
                : leaves // ignore: cast_nullable_to_non_nullable
                      as List<LeaveModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveModelCopyWith<$Res>? get leave {
    if (_value.leave == null) {
      return null;
    }

    return $LeaveModelCopyWith<$Res>(_value.leave!, (value) {
      return _then(_value.copyWith(leave: value) as $Val);
    });
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
  $Res call({
    Status status,
    dynamic image,
    LeaveModel? leave,
    List<LeaveModel> leaves,
  });

  @override
  $LeaveModelCopyWith<$Res>? get leave;
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
  $Res call({
    Object? status = null,
    Object? image = freezed,
    Object? leave = freezed,
    Object? leaves = null,
  }) {
    return _then(
      _$LeaveStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        image: freezed == image ? _value.image! : image,
        leave: freezed == leave
            ? _value.leave
            : leave // ignore: cast_nullable_to_non_nullable
                  as LeaveModel?,
        leaves: null == leaves
            ? _value._leaves
            : leaves // ignore: cast_nullable_to_non_nullable
                  as List<LeaveModel>,
      ),
    );
  }
}

/// @nodoc

class _$LeaveStateImpl implements _LeaveState {
  const _$LeaveStateImpl({
    this.status = Status.initial,
    this.image = "",
    this.leave,
    final List<LeaveModel> leaves = const [],
  }) : _leaves = leaves;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final dynamic image;
  @override
  final LeaveModel? leave;
  final List<LeaveModel> _leaves;
  @override
  @JsonKey()
  List<LeaveModel> get leaves {
    if (_leaves is EqualUnmodifiableListView) return _leaves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaves);
  }

  @override
  String toString() {
    return 'LeaveState(status: $status, image: $image, leave: $leave, leaves: $leaves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.leave, leave) || other.leave == leave) &&
            const DeepCollectionEquality().equals(other._leaves, _leaves));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(image),
    leave,
    const DeepCollectionEquality().hash(_leaves),
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
  const factory _LeaveState({
    final Status status,
    final dynamic image,
    final LeaveModel? leave,
    final List<LeaveModel> leaves,
  }) = _$LeaveStateImpl;

  @override
  Status get status;
  @override
  dynamic get image;
  @override
  LeaveModel? get leave;
  @override
  List<LeaveModel> get leaves;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
