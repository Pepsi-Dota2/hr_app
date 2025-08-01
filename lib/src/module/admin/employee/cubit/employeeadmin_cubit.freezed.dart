// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeeadmin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmployeeadminState {
  Status get status => throw _privateConstructorUsedError;
  List<EmployeesModel> get employee => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeadminStateCopyWith<EmployeeadminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeadminStateCopyWith<$Res> {
  factory $EmployeeadminStateCopyWith(
    EmployeeadminState value,
    $Res Function(EmployeeadminState) then,
  ) = _$EmployeeadminStateCopyWithImpl<$Res, EmployeeadminState>;
  @useResult
  $Res call({Status status, List<EmployeesModel> employee});
}

/// @nodoc
class _$EmployeeadminStateCopyWithImpl<$Res, $Val extends EmployeeadminState>
    implements $EmployeeadminStateCopyWith<$Res> {
  _$EmployeeadminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? employee = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            employee: null == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                      as List<EmployeesModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmployeeadminStateImplCopyWith<$Res>
    implements $EmployeeadminStateCopyWith<$Res> {
  factory _$$EmployeeadminStateImplCopyWith(
    _$EmployeeadminStateImpl value,
    $Res Function(_$EmployeeadminStateImpl) then,
  ) = __$$EmployeeadminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<EmployeesModel> employee});
}

/// @nodoc
class __$$EmployeeadminStateImplCopyWithImpl<$Res>
    extends _$EmployeeadminStateCopyWithImpl<$Res, _$EmployeeadminStateImpl>
    implements _$$EmployeeadminStateImplCopyWith<$Res> {
  __$$EmployeeadminStateImplCopyWithImpl(
    _$EmployeeadminStateImpl _value,
    $Res Function(_$EmployeeadminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeeadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? employee = null}) {
    return _then(
      _$EmployeeadminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        employee: null == employee
            ? _value._employee
            : employee // ignore: cast_nullable_to_non_nullable
                  as List<EmployeesModel>,
      ),
    );
  }
}

/// @nodoc

class _$EmployeeadminStateImpl implements _EmployeeadminState {
  const _$EmployeeadminStateImpl({
    this.status = Status.initial,
    final List<EmployeesModel> employee = const [],
  }) : _employee = employee;

  @override
  @JsonKey()
  final Status status;
  final List<EmployeesModel> _employee;
  @override
  @JsonKey()
  List<EmployeesModel> get employee {
    if (_employee is EqualUnmodifiableListView) return _employee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employee);
  }

  @override
  String toString() {
    return 'EmployeeadminState(status: $status, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._employee, _employee));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_employee),
  );

  /// Create a copy of EmployeeadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeadminStateImplCopyWith<_$EmployeeadminStateImpl> get copyWith =>
      __$$EmployeeadminStateImplCopyWithImpl<_$EmployeeadminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _EmployeeadminState implements EmployeeadminState {
  const factory _EmployeeadminState({
    final Status status,
    final List<EmployeesModel> employee,
  }) = _$EmployeeadminStateImpl;

  @override
  Status get status;
  @override
  List<EmployeesModel> get employee;

  /// Create a copy of EmployeeadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeadminStateImplCopyWith<_$EmployeeadminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
