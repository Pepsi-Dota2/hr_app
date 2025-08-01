// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positionadmin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PositionadminState {
  Status get status => throw _privateConstructorUsedError;
  List<PositionModel> get position => throw _privateConstructorUsedError;
  List<PositionModel> get filteredSalary => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionadminStateCopyWith<PositionadminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionadminStateCopyWith<$Res> {
  factory $PositionadminStateCopyWith(
    PositionadminState value,
    $Res Function(PositionadminState) then,
  ) = _$PositionadminStateCopyWithImpl<$Res, PositionadminState>;
  @useResult
  $Res call({
    Status status,
    List<PositionModel> position,
    List<PositionModel> filteredSalary,
    String searchQuery,
  });
}

/// @nodoc
class _$PositionadminStateCopyWithImpl<$Res, $Val extends PositionadminState>
    implements $PositionadminStateCopyWith<$Res> {
  _$PositionadminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? position = null,
    Object? filteredSalary = null,
    Object? searchQuery = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as List<PositionModel>,
            filteredSalary: null == filteredSalary
                ? _value.filteredSalary
                : filteredSalary // ignore: cast_nullable_to_non_nullable
                      as List<PositionModel>,
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PositionadminStateImplCopyWith<$Res>
    implements $PositionadminStateCopyWith<$Res> {
  factory _$$PositionadminStateImplCopyWith(
    _$PositionadminStateImpl value,
    $Res Function(_$PositionadminStateImpl) then,
  ) = __$$PositionadminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<PositionModel> position,
    List<PositionModel> filteredSalary,
    String searchQuery,
  });
}

/// @nodoc
class __$$PositionadminStateImplCopyWithImpl<$Res>
    extends _$PositionadminStateCopyWithImpl<$Res, _$PositionadminStateImpl>
    implements _$$PositionadminStateImplCopyWith<$Res> {
  __$$PositionadminStateImplCopyWithImpl(
    _$PositionadminStateImpl _value,
    $Res Function(_$PositionadminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? position = null,
    Object? filteredSalary = null,
    Object? searchQuery = null,
  }) {
    return _then(
      _$PositionadminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        position: null == position
            ? _value._position
            : position // ignore: cast_nullable_to_non_nullable
                  as List<PositionModel>,
        filteredSalary: null == filteredSalary
            ? _value._filteredSalary
            : filteredSalary // ignore: cast_nullable_to_non_nullable
                  as List<PositionModel>,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PositionadminStateImpl implements _PositionadminState {
  const _$PositionadminStateImpl({
    this.status = Status.initial,
    final List<PositionModel> position = const [],
    final List<PositionModel> filteredSalary = const [],
    this.searchQuery = '',
  }) : _position = position,
       _filteredSalary = filteredSalary;

  @override
  @JsonKey()
  final Status status;
  final List<PositionModel> _position;
  @override
  @JsonKey()
  List<PositionModel> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

  final List<PositionModel> _filteredSalary;
  @override
  @JsonKey()
  List<PositionModel> get filteredSalary {
    if (_filteredSalary is EqualUnmodifiableListView) return _filteredSalary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSalary);
  }

  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'PositionadminState(status: $status, position: $position, filteredSalary: $filteredSalary, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._position, _position) &&
            const DeepCollectionEquality().equals(
              other._filteredSalary,
              _filteredSalary,
            ) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_position),
    const DeepCollectionEquality().hash(_filteredSalary),
    searchQuery,
  );

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionadminStateImplCopyWith<_$PositionadminStateImpl> get copyWith =>
      __$$PositionadminStateImplCopyWithImpl<_$PositionadminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PositionadminState implements PositionadminState {
  const factory _PositionadminState({
    final Status status,
    final List<PositionModel> position,
    final List<PositionModel> filteredSalary,
    final String searchQuery,
  }) = _$PositionadminStateImpl;

  @override
  Status get status;
  @override
  List<PositionModel> get position;
  @override
  List<PositionModel> get filteredSalary;
  @override
  String get searchQuery;

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionadminStateImplCopyWith<_$PositionadminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
