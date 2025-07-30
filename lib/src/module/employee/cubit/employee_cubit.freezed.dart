// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmployeeState {
  Status get status => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  String get localImagePath => throw _privateConstructorUsedError;
  List<SararyModel> get salary => throw _privateConstructorUsedError;
  EmployeesModel? get user => throw _privateConstructorUsedError;
  List<EmployeesModel> get employee => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
    EmployeeState value,
    $Res Function(EmployeeState) then,
  ) = _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call({
    Status status,
    dynamic image,
    String localImagePath,
    List<SararyModel> salary,
    EmployeesModel? user,
    List<EmployeesModel> employee,
  });

  $EmployeesModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? image = freezed,
    Object? localImagePath = null,
    Object? salary = null,
    Object? user = freezed,
    Object? employee = null,
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
            localImagePath: null == localImagePath
                ? _value.localImagePath
                : localImagePath // ignore: cast_nullable_to_non_nullable
                      as String,
            salary: null == salary
                ? _value.salary
                : salary // ignore: cast_nullable_to_non_nullable
                      as List<SararyModel>,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as EmployeesModel?,
            employee: null == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                      as List<EmployeesModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeesModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $EmployeesModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeStateImplCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$EmployeeStateImplCopyWith(
    _$EmployeeStateImpl value,
    $Res Function(_$EmployeeStateImpl) then,
  ) = __$$EmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    dynamic image,
    String localImagePath,
    List<SararyModel> salary,
    EmployeesModel? user,
    List<EmployeesModel> employee,
  });

  @override
  $EmployeesModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$EmployeeStateImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$EmployeeStateImpl>
    implements _$$EmployeeStateImplCopyWith<$Res> {
  __$$EmployeeStateImplCopyWithImpl(
    _$EmployeeStateImpl _value,
    $Res Function(_$EmployeeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? image = freezed,
    Object? localImagePath = null,
    Object? salary = null,
    Object? user = freezed,
    Object? employee = null,
  }) {
    return _then(
      _$EmployeeStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        image: freezed == image ? _value.image! : image,
        localImagePath: null == localImagePath
            ? _value.localImagePath
            : localImagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        salary: null == salary
            ? _value._salary
            : salary // ignore: cast_nullable_to_non_nullable
                  as List<SararyModel>,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as EmployeesModel?,
        employee: null == employee
            ? _value._employee
            : employee // ignore: cast_nullable_to_non_nullable
                  as List<EmployeesModel>,
      ),
    );
  }
}

/// @nodoc

class _$EmployeeStateImpl implements _EmployeeState {
  const _$EmployeeStateImpl({
    this.status = Status.initial,
    this.image = "",
    this.localImagePath = "",
    final List<SararyModel> salary = const [],
    this.user,
    final List<EmployeesModel> employee = const [],
  }) : _salary = salary,
       _employee = employee;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final dynamic image;
  @override
  @JsonKey()
  final String localImagePath;
  final List<SararyModel> _salary;
  @override
  @JsonKey()
  List<SararyModel> get salary {
    if (_salary is EqualUnmodifiableListView) return _salary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salary);
  }

  @override
  final EmployeesModel? user;
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
    return 'EmployeeState(status: $status, image: $image, localImagePath: $localImagePath, salary: $salary, user: $user, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.localImagePath, localImagePath) ||
                other.localImagePath == localImagePath) &&
            const DeepCollectionEquality().equals(other._salary, _salary) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._employee, _employee));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(image),
    localImagePath,
    const DeepCollectionEquality().hash(_salary),
    user,
    const DeepCollectionEquality().hash(_employee),
  );

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      __$$EmployeeStateImplCopyWithImpl<_$EmployeeStateImpl>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState({
    final Status status,
    final dynamic image,
    final String localImagePath,
    final List<SararyModel> salary,
    final EmployeesModel? user,
    final List<EmployeesModel> employee,
  }) = _$EmployeeStateImpl;

  @override
  Status get status;
  @override
  dynamic get image;
  @override
  String get localImagePath;
  @override
  List<SararyModel> get salary;
  @override
  EmployeesModel? get user;
  @override
  List<EmployeesModel> get employee;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
