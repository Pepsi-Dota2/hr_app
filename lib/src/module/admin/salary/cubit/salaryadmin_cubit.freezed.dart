// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salaryadmin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SalaryadminState {
  Status get status => throw _privateConstructorUsedError;
  List<SararyModel> get salary => throw _privateConstructorUsedError;
  List<SararyModel> get filteredSalary => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<EmployeesModel> get employee => throw _privateConstructorUsedError;
  List<DeductionModel> get deduction => throw _privateConstructorUsedError;
  String get selectedDeduction => throw _privateConstructorUsedError;

  /// Create a copy of SalaryadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalaryadminStateCopyWith<SalaryadminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryadminStateCopyWith<$Res> {
  factory $SalaryadminStateCopyWith(
    SalaryadminState value,
    $Res Function(SalaryadminState) then,
  ) = _$SalaryadminStateCopyWithImpl<$Res, SalaryadminState>;
  @useResult
  $Res call({
    Status status,
    List<SararyModel> salary,
    List<SararyModel> filteredSalary,
    String searchQuery,
    List<EmployeesModel> employee,
    List<DeductionModel> deduction,
    String selectedDeduction,
  });
}

/// @nodoc
class _$SalaryadminStateCopyWithImpl<$Res, $Val extends SalaryadminState>
    implements $SalaryadminStateCopyWith<$Res> {
  _$SalaryadminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalaryadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? salary = null,
    Object? filteredSalary = null,
    Object? searchQuery = null,
    Object? employee = null,
    Object? deduction = null,
    Object? selectedDeduction = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            salary: null == salary
                ? _value.salary
                : salary // ignore: cast_nullable_to_non_nullable
                      as List<SararyModel>,
            filteredSalary: null == filteredSalary
                ? _value.filteredSalary
                : filteredSalary // ignore: cast_nullable_to_non_nullable
                      as List<SararyModel>,
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
            employee: null == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                      as List<EmployeesModel>,
            deduction: null == deduction
                ? _value.deduction
                : deduction // ignore: cast_nullable_to_non_nullable
                      as List<DeductionModel>,
            selectedDeduction: null == selectedDeduction
                ? _value.selectedDeduction
                : selectedDeduction // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SalaryadminStateImplCopyWith<$Res>
    implements $SalaryadminStateCopyWith<$Res> {
  factory _$$SalaryadminStateImplCopyWith(
    _$SalaryadminStateImpl value,
    $Res Function(_$SalaryadminStateImpl) then,
  ) = __$$SalaryadminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<SararyModel> salary,
    List<SararyModel> filteredSalary,
    String searchQuery,
    List<EmployeesModel> employee,
    List<DeductionModel> deduction,
    String selectedDeduction,
  });
}

/// @nodoc
class __$$SalaryadminStateImplCopyWithImpl<$Res>
    extends _$SalaryadminStateCopyWithImpl<$Res, _$SalaryadminStateImpl>
    implements _$$SalaryadminStateImplCopyWith<$Res> {
  __$$SalaryadminStateImplCopyWithImpl(
    _$SalaryadminStateImpl _value,
    $Res Function(_$SalaryadminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalaryadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? salary = null,
    Object? filteredSalary = null,
    Object? searchQuery = null,
    Object? employee = null,
    Object? deduction = null,
    Object? selectedDeduction = null,
  }) {
    return _then(
      _$SalaryadminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        salary: null == salary
            ? _value._salary
            : salary // ignore: cast_nullable_to_non_nullable
                  as List<SararyModel>,
        filteredSalary: null == filteredSalary
            ? _value._filteredSalary
            : filteredSalary // ignore: cast_nullable_to_non_nullable
                  as List<SararyModel>,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
        employee: null == employee
            ? _value._employee
            : employee // ignore: cast_nullable_to_non_nullable
                  as List<EmployeesModel>,
        deduction: null == deduction
            ? _value._deduction
            : deduction // ignore: cast_nullable_to_non_nullable
                  as List<DeductionModel>,
        selectedDeduction: null == selectedDeduction
            ? _value.selectedDeduction
            : selectedDeduction // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SalaryadminStateImpl implements _SalaryadminState {
  const _$SalaryadminStateImpl({
    this.status = Status.initial,
    final List<SararyModel> salary = const [],
    final List<SararyModel> filteredSalary = const [],
    this.searchQuery = '',
    final List<EmployeesModel> employee = const [],
    final List<DeductionModel> deduction = const [],
    this.selectedDeduction = "late",
  }) : _salary = salary,
       _filteredSalary = filteredSalary,
       _employee = employee,
       _deduction = deduction;

  @override
  @JsonKey()
  final Status status;
  final List<SararyModel> _salary;
  @override
  @JsonKey()
  List<SararyModel> get salary {
    if (_salary is EqualUnmodifiableListView) return _salary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salary);
  }

  final List<SararyModel> _filteredSalary;
  @override
  @JsonKey()
  List<SararyModel> get filteredSalary {
    if (_filteredSalary is EqualUnmodifiableListView) return _filteredSalary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSalary);
  }

  @override
  @JsonKey()
  final String searchQuery;
  final List<EmployeesModel> _employee;
  @override
  @JsonKey()
  List<EmployeesModel> get employee {
    if (_employee is EqualUnmodifiableListView) return _employee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employee);
  }

  final List<DeductionModel> _deduction;
  @override
  @JsonKey()
  List<DeductionModel> get deduction {
    if (_deduction is EqualUnmodifiableListView) return _deduction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deduction);
  }

  @override
  @JsonKey()
  final String selectedDeduction;

  @override
  String toString() {
    return 'SalaryadminState(status: $status, salary: $salary, filteredSalary: $filteredSalary, searchQuery: $searchQuery, employee: $employee, deduction: $deduction, selectedDeduction: $selectedDeduction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalaryadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._salary, _salary) &&
            const DeepCollectionEquality().equals(
              other._filteredSalary,
              _filteredSalary,
            ) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality().equals(other._employee, _employee) &&
            const DeepCollectionEquality().equals(
              other._deduction,
              _deduction,
            ) &&
            (identical(other.selectedDeduction, selectedDeduction) ||
                other.selectedDeduction == selectedDeduction));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_salary),
    const DeepCollectionEquality().hash(_filteredSalary),
    searchQuery,
    const DeepCollectionEquality().hash(_employee),
    const DeepCollectionEquality().hash(_deduction),
    selectedDeduction,
  );

  /// Create a copy of SalaryadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalaryadminStateImplCopyWith<_$SalaryadminStateImpl> get copyWith =>
      __$$SalaryadminStateImplCopyWithImpl<_$SalaryadminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SalaryadminState implements SalaryadminState {
  const factory _SalaryadminState({
    final Status status,
    final List<SararyModel> salary,
    final List<SararyModel> filteredSalary,
    final String searchQuery,
    final List<EmployeesModel> employee,
    final List<DeductionModel> deduction,
    final String selectedDeduction,
  }) = _$SalaryadminStateImpl;

  @override
  Status get status;
  @override
  List<SararyModel> get salary;
  @override
  List<SararyModel> get filteredSalary;
  @override
  String get searchQuery;
  @override
  List<EmployeesModel> get employee;
  @override
  List<DeductionModel> get deduction;
  @override
  String get selectedDeduction;

  /// Create a copy of SalaryadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalaryadminStateImplCopyWith<_$SalaryadminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
