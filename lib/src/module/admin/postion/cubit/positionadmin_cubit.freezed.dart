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
  List<PositionModel> get filterPosition => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  PositionModel? get selecpositionted => throw _privateConstructorUsedError;

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
    List<PositionModel> filterPosition,
    String searchQuery,
    PositionModel? selecpositionted,
  });

  $PositionModelCopyWith<$Res>? get selecpositionted;
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
    Object? filterPosition = null,
    Object? searchQuery = null,
    Object? selecpositionted = freezed,
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
            filterPosition: null == filterPosition
                ? _value.filterPosition
                : filterPosition // ignore: cast_nullable_to_non_nullable
                      as List<PositionModel>,
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
            selecpositionted: freezed == selecpositionted
                ? _value.selecpositionted
                : selecpositionted // ignore: cast_nullable_to_non_nullable
                      as PositionModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionModelCopyWith<$Res>? get selecpositionted {
    if (_value.selecpositionted == null) {
      return null;
    }

    return $PositionModelCopyWith<$Res>(_value.selecpositionted!, (value) {
      return _then(_value.copyWith(selecpositionted: value) as $Val);
    });
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
    List<PositionModel> filterPosition,
    String searchQuery,
    PositionModel? selecpositionted,
  });

  @override
  $PositionModelCopyWith<$Res>? get selecpositionted;
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
    Object? filterPosition = null,
    Object? searchQuery = null,
    Object? selecpositionted = freezed,
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
        filterPosition: null == filterPosition
            ? _value._filterPosition
            : filterPosition // ignore: cast_nullable_to_non_nullable
                  as List<PositionModel>,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
        selecpositionted: freezed == selecpositionted
            ? _value.selecpositionted
            : selecpositionted // ignore: cast_nullable_to_non_nullable
                  as PositionModel?,
      ),
    );
  }
}

/// @nodoc

class _$PositionadminStateImpl implements _PositionadminState {
  const _$PositionadminStateImpl({
    this.status = Status.initial,
    final List<PositionModel> position = const [],
    final List<PositionModel> filterPosition = const [],
    this.searchQuery = '',
    this.selecpositionted,
  }) : _position = position,
       _filterPosition = filterPosition;

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

  final List<PositionModel> _filterPosition;
  @override
  @JsonKey()
  List<PositionModel> get filterPosition {
    if (_filterPosition is EqualUnmodifiableListView) return _filterPosition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterPosition);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  final PositionModel? selecpositionted;

  @override
  String toString() {
    return 'PositionadminState(status: $status, position: $position, filterPosition: $filterPosition, searchQuery: $searchQuery, selecpositionted: $selecpositionted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionadminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._position, _position) &&
            const DeepCollectionEquality().equals(
              other._filterPosition,
              _filterPosition,
            ) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.selecpositionted, selecpositionted) ||
                other.selecpositionted == selecpositionted));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_position),
    const DeepCollectionEquality().hash(_filterPosition),
    searchQuery,
    selecpositionted,
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
    final List<PositionModel> filterPosition,
    final String searchQuery,
    final PositionModel? selecpositionted,
  }) = _$PositionadminStateImpl;

  @override
  Status get status;
  @override
  List<PositionModel> get position;
  @override
  List<PositionModel> get filterPosition;
  @override
  String get searchQuery;
  @override
  PositionModel? get selecpositionted;

  /// Create a copy of PositionadminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionadminStateImplCopyWith<_$PositionadminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
