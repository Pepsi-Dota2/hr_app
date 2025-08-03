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
  List<PositionModel> get position => throw _privateConstructorUsedError;
  List<DepartmentModel> get departments => throw _privateConstructorUsedError;
  List<AuthModel> get user => throw _privateConstructorUsedError;
  dynamic get selectDepartment => throw _privateConstructorUsedError;
  dynamic get selectPosition => throw _privateConstructorUsedError;
  dynamic get selectUser => throw _privateConstructorUsedError;

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
  $Res call({
    Status status,
    List<EmployeesModel> employee,
    List<PositionModel> position,
    List<DepartmentModel> departments,
    List<AuthModel> user,
    dynamic selectDepartment,
    dynamic selectPosition,
    dynamic selectUser,
  });
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
  $Res call({
    Object? status = null,
    Object? employee = null,
    Object? position = null,
    Object? departments = null,
    Object? user = null,
    Object? selectDepartment = freezed,
    Object? selectPosition = freezed,
    Object? selectUser = freezed,
  }) {
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
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as List<PositionModel>,
            departments: null == departments
                ? _value.departments
                : departments // ignore: cast_nullable_to_non_nullable
                      as List<DepartmentModel>,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as List<AuthModel>,
            selectDepartment: freezed == selectDepartment
                ? _value.selectDepartment
                : selectDepartment // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            selectPosition: freezed == selectPosition
                ? _value.selectPosition
                : selectPosition // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            selectUser: freezed == selectUser
                ? _value.selectUser
                : selectUser // ignore: cast_nullable_to_non_nullable
                      as dynamic,
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
  $Res call({
    Status status,
    List<EmployeesModel> employee,
    List<PositionModel> position,
    List<DepartmentModel> departments,
    List<AuthModel> user,
    dynamic selectDepartment,
    dynamic selectPosition,
    dynamic selectUser,
  });
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
  $Res call({
    Object? status = null,
    Object? employee = null,
    Object? position = null,
    Object? departments = null,
    Object? user = null,
    Object? selectDepartment = freezed,
    Object? selectPosition = freezed,
    Object? selectUser = freezed,
  }) {
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
        position: null == position
            ? _value._position
            : position // ignore: cast_nullable_to_non_nullable
                  as List<PositionModel>,
        departments: null == departments
            ? _value._departments
            : departments // ignore: cast_nullable_to_non_nullable
                  as List<DepartmentModel>,
        user: null == user
            ? _value._user
            : user // ignore: cast_nullable_to_non_nullable
                  as List<AuthModel>,
        selectDepartment: freezed == selectDepartment
            ? _value.selectDepartment!
            : selectDepartment,
        selectPosition: freezed == selectPosition
            ? _value.selectPosition!
            : selectPosition,
        selectUser: freezed == selectUser ? _value.selectUser! : selectUser,
      ),
    );
  }
}

/// @nodoc

class _$EmployeeadminStateImpl implements _EmployeeadminState {
  const _$EmployeeadminStateImpl({
    this.status = Status.initial,
    final List<EmployeesModel> employee = const [],
    final List<PositionModel> position = const [],
    final List<DepartmentModel> departments = const [],
    final List<AuthModel> user = const [],
    this.selectDepartment = "",
    this.selectPosition = "",
    this.selectUser = "",
  }) : _employee = employee,
       _position = position,
       _departments = departments,
       _user = user;

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

  final List<PositionModel> _position;
  @override
  @JsonKey()
  List<PositionModel> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

  final List<DepartmentModel> _departments;
  @override
  @JsonKey()
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  final List<AuthModel> _user;
  @override
  @JsonKey()
  List<AuthModel> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  @JsonKey()
  final dynamic selectDepartment;
  @override
  @JsonKey()
  final dynamic selectPosition;
  @override
  @JsonKey()
  final dynamic selectUser;

  @override
  String toString() {
    return 'EmployeeadminState(status: $status, employee: $employee, position: $position, departments: $departments, user: $user, selectDepartment: $selectDepartment, selectPosition: $selectPosition, selectUser: $selectUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._employee, _employee) &&
            const DeepCollectionEquality().equals(other._position, _position) &&
            const DeepCollectionEquality().equals(
              other._departments,
              _departments,
            ) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(
              other.selectDepartment,
              selectDepartment,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectPosition,
              selectPosition,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectUser,
              selectUser,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_employee),
    const DeepCollectionEquality().hash(_position),
    const DeepCollectionEquality().hash(_departments),
    const DeepCollectionEquality().hash(_user),
    const DeepCollectionEquality().hash(selectDepartment),
    const DeepCollectionEquality().hash(selectPosition),
    const DeepCollectionEquality().hash(selectUser),
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
    final List<PositionModel> position,
    final List<DepartmentModel> departments,
    final List<AuthModel> user,
    final dynamic selectDepartment,
    final dynamic selectPosition,
    final dynamic selectUser,
  }) = _$EmployeeadminStateImpl;

  @override
  Status get status;
  @override
  List<EmployeesModel> get employee;
  @override
  List<PositionModel> get position;
  @override
  List<DepartmentModel> get departments;
  @override
  List<AuthModel> get user;
  @override
  dynamic get selectDepartment;
  @override
  dynamic get selectPosition;
  @override
  dynamic get selectUser;

  /// Create a copy of EmployeeadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeadminStateImplCopyWith<_$EmployeeadminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
