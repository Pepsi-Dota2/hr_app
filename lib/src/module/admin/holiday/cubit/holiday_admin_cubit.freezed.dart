// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holiday_admin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HolidayAdminState {
  Status get status => throw _privateConstructorUsedError;
  List<HolidayModel> get holiday => throw _privateConstructorUsedError;

  /// Create a copy of HolidayAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HolidayAdminStateCopyWith<HolidayAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayAdminStateCopyWith<$Res> {
  factory $HolidayAdminStateCopyWith(
    HolidayAdminState value,
    $Res Function(HolidayAdminState) then,
  ) = _$HolidayAdminStateCopyWithImpl<$Res, HolidayAdminState>;
  @useResult
  $Res call({Status status, List<HolidayModel> holiday});
}

/// @nodoc
class _$HolidayAdminStateCopyWithImpl<$Res, $Val extends HolidayAdminState>
    implements $HolidayAdminStateCopyWith<$Res> {
  _$HolidayAdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HolidayAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? holiday = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            holiday: null == holiday
                ? _value.holiday
                : holiday // ignore: cast_nullable_to_non_nullable
                      as List<HolidayModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HolidayAdminStateImplCopyWith<$Res>
    implements $HolidayAdminStateCopyWith<$Res> {
  factory _$$HolidayAdminStateImplCopyWith(
    _$HolidayAdminStateImpl value,
    $Res Function(_$HolidayAdminStateImpl) then,
  ) = __$$HolidayAdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<HolidayModel> holiday});
}

/// @nodoc
class __$$HolidayAdminStateImplCopyWithImpl<$Res>
    extends _$HolidayAdminStateCopyWithImpl<$Res, _$HolidayAdminStateImpl>
    implements _$$HolidayAdminStateImplCopyWith<$Res> {
  __$$HolidayAdminStateImplCopyWithImpl(
    _$HolidayAdminStateImpl _value,
    $Res Function(_$HolidayAdminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HolidayAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? holiday = null}) {
    return _then(
      _$HolidayAdminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        holiday: null == holiday
            ? _value._holiday
            : holiday // ignore: cast_nullable_to_non_nullable
                  as List<HolidayModel>,
      ),
    );
  }
}

/// @nodoc

class _$HolidayAdminStateImpl implements _HolidayAdminState {
  const _$HolidayAdminStateImpl({
    this.status = Status.initial,
    final List<HolidayModel> holiday = const [],
  }) : _holiday = holiday;

  @override
  @JsonKey()
  final Status status;
  final List<HolidayModel> _holiday;
  @override
  @JsonKey()
  List<HolidayModel> get holiday {
    if (_holiday is EqualUnmodifiableListView) return _holiday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holiday);
  }

  @override
  String toString() {
    return 'HolidayAdminState(status: $status, holiday: $holiday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolidayAdminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._holiday, _holiday));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_holiday),
  );

  /// Create a copy of HolidayAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HolidayAdminStateImplCopyWith<_$HolidayAdminStateImpl> get copyWith =>
      __$$HolidayAdminStateImplCopyWithImpl<_$HolidayAdminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _HolidayAdminState implements HolidayAdminState {
  const factory _HolidayAdminState({
    final Status status,
    final List<HolidayModel> holiday,
  }) = _$HolidayAdminStateImpl;

  @override
  Status get status;
  @override
  List<HolidayModel> get holiday;

  /// Create a copy of HolidayAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HolidayAdminStateImplCopyWith<_$HolidayAdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
