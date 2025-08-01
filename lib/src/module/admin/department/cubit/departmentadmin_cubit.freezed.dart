// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departmentadmin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DepartmentadminState {
  Status get status => throw _privateConstructorUsedError;
  List<DepartmentModel> get departments => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<DepartmentModel> get filteredSalary =>
      throw _privateConstructorUsedError;

  /// Create a copy of DepartmentadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentadminStateCopyWith<DepartmentadminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentadminStateCopyWith<$Res> {
  factory $DepartmentadminStateCopyWith(
    DepartmentadminState value,
    $Res Function(DepartmentadminState) then,
  ) = _$DepartmentadminStateCopyWithImpl<$Res, DepartmentadminState>;
  @useResult
  $Res call({
    Status status,
    List<DepartmentModel> departments,
    String searchQuery,
    List<DepartmentModel> filteredSalary,
  });
}

/// @nodoc
class _$DepartmentadminStateCopyWithImpl<
  $Res,
  $Val extends DepartmentadminState
>
    implements $DepartmentadminStateCopyWith<$Res> {
  _$DepartmentadminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? departments = null,
    Object? searchQuery = null,
    Object? filteredSalary = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            departments: null == departments
                ? _value.departments
                : departments // ignore: cast_nullable_to_non_nullable
                      as List<DepartmentModel>,
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
            filteredSalary: null == filteredSalary
                ? _value.filteredSalary
                : filteredSalary // ignore: cast_nullable_to_non_nullable
                      as List<DepartmentModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DepartmentadminStateImplCopyWith<$Res>
    implements $DepartmentadminStateCopyWith<$Res> {
  factory _$$DepartmentadminStateImplCopyWith(
    _$DepartmentadminStateImpl value,
    $Res Function(_$DepartmentadminStateImpl) then,
  ) = __$$DepartmentadminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<DepartmentModel> departments,
    String searchQuery,
    List<DepartmentModel> filteredSalary,
  });
}

/// @nodoc
class __$$DepartmentadminStateImplCopyWithImpl<$Res>
    extends _$DepartmentadminStateCopyWithImpl<$Res, _$DepartmentadminStateImpl>
    implements _$$DepartmentadminStateImplCopyWith<$Res> {
  __$$DepartmentadminStateImplCopyWithImpl(
    _$DepartmentadminStateImpl _value,
    $Res Function(_$DepartmentadminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DepartmentadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? departments = null,
    Object? searchQuery = null,
    Object? filteredSalary = null,
  }) {
    return _then(
      _$DepartmentadminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        departments: null == departments
            ? _value._departments
            : departments // ignore: cast_nullable_to_non_nullable
                  as List<DepartmentModel>,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
        filteredSalary: null == filteredSalary
            ? _value._filteredSalary
            : filteredSalary // ignore: cast_nullable_to_non_nullable
                  as List<DepartmentModel>,
      ),
    );
  }
}

/// @nodoc

class _$DepartmentadminStateImpl implements _DepartmentadminState {
  const _$DepartmentadminStateImpl({
    this.status = Status.initial,
    final List<DepartmentModel> departments = const [],
    this.searchQuery = '',
    final List<DepartmentModel> filteredSalary = const [],
  }) : _departments = departments,
       _filteredSalary = filteredSalary;

  @override
  @JsonKey()
  final Status status;
  final List<DepartmentModel> _departments;
  @override
  @JsonKey()
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  @JsonKey()
  final String searchQuery;
  final List<DepartmentModel> _filteredSalary;
  @override
  @JsonKey()
  List<DepartmentModel> get filteredSalary {
    if (_filteredSalary is EqualUnmodifiableListView) return _filteredSalary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSalary);
  }

  @override
  String toString() {
    return 'DepartmentadminState(status: $status, departments: $departments, searchQuery: $searchQuery, filteredSalary: $filteredSalary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._departments,
              _departments,
            ) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality().equals(
              other._filteredSalary,
              _filteredSalary,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_departments),
    searchQuery,
    const DeepCollectionEquality().hash(_filteredSalary),
  );

  /// Create a copy of DepartmentadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentadminStateImplCopyWith<_$DepartmentadminStateImpl>
  get copyWith =>
      __$$DepartmentadminStateImplCopyWithImpl<_$DepartmentadminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DepartmentadminState implements DepartmentadminState {
  const factory _DepartmentadminState({
    final Status status,
    final List<DepartmentModel> departments,
    final String searchQuery,
    final List<DepartmentModel> filteredSalary,
  }) = _$DepartmentadminStateImpl;

  @override
  Status get status;
  @override
  List<DepartmentModel> get departments;
  @override
  String get searchQuery;
  @override
  List<DepartmentModel> get filteredSalary;

  /// Create a copy of DepartmentadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentadminStateImplCopyWith<_$DepartmentadminStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
