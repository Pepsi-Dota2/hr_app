// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorkTimeRecordState {
  Status get status => throw _privateConstructorUsedError;
  StopWatchTimer? get timer => throw _privateConstructorUsedError;
  bool get isStart => throw _privateConstructorUsedError;
  DateTime? get startDateTime => throw _privateConstructorUsedError;

  /// Create a copy of WorkTimeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkTimeRecordStateCopyWith<WorkTimeRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeRecordStateCopyWith<$Res> {
  factory $WorkTimeRecordStateCopyWith(
    WorkTimeRecordState value,
    $Res Function(WorkTimeRecordState) then,
  ) = _$WorkTimeRecordStateCopyWithImpl<$Res, WorkTimeRecordState>;
  @useResult
  $Res call({
    Status status,
    StopWatchTimer? timer,
    bool isStart,
    DateTime? startDateTime,
  });
}

/// @nodoc
class _$WorkTimeRecordStateCopyWithImpl<$Res, $Val extends WorkTimeRecordState>
    implements $WorkTimeRecordStateCopyWith<$Res> {
  _$WorkTimeRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkTimeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timer = freezed,
    Object? isStart = null,
    Object? startDateTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            timer: freezed == timer
                ? _value.timer
                : timer // ignore: cast_nullable_to_non_nullable
                      as StopWatchTimer?,
            isStart: null == isStart
                ? _value.isStart
                : isStart // ignore: cast_nullable_to_non_nullable
                      as bool,
            startDateTime: freezed == startDateTime
                ? _value.startDateTime
                : startDateTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WorkTimeRecordStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    StopWatchTimer? timer,
    bool isStart,
    DateTime? startDateTime,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WorkTimeRecordStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkTimeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timer = freezed,
    Object? isStart = null,
    Object? startDateTime = freezed,
  }) {
    return _then(
      _$InitialImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        timer: freezed == timer
            ? _value.timer
            : timer // ignore: cast_nullable_to_non_nullable
                  as StopWatchTimer?,
        isStart: null == isStart
            ? _value.isStart
            : isStart // ignore: cast_nullable_to_non_nullable
                  as bool,
        startDateTime: freezed == startDateTime
            ? _value.startDateTime
            : startDateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.status = Status.initial,
    this.timer,
    this.isStart = false,
    this.startDateTime,
  });

  @override
  @JsonKey()
  final Status status;
  @override
  final StopWatchTimer? timer;
  @override
  @JsonKey()
  final bool isStart;
  @override
  final DateTime? startDateTime;

  @override
  String toString() {
    return 'WorkTimeRecordState(status: $status, timer: $timer, isStart: $isStart, startDateTime: $startDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.isStart, isStart) || other.isStart == isStart) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, timer, isStart, startDateTime);

  /// Create a copy of WorkTimeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements WorkTimeRecordState {
  const factory _Initial({
    final Status status,
    final StopWatchTimer? timer,
    final bool isStart,
    final DateTime? startDateTime,
  }) = _$InitialImpl;

  @override
  Status get status;
  @override
  StopWatchTimer? get timer;
  @override
  bool get isStart;
  @override
  DateTime? get startDateTime;

  /// Create a copy of WorkTimeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
