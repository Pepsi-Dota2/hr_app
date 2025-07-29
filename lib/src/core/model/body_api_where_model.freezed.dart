// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_api_where_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BodyApiWhereModel _$BodyApiWhereModelFromJson(Map<String, dynamic> json) {
  return _BodyApiWhereModel.fromJson(json);
}

/// @nodoc
mixin _$BodyApiWhereModel {
  String get db_type => throw _privateConstructorUsedError;
  String get store_code => throw _privateConstructorUsedError;
  Map<String, dynamic> get where => throw _privateConstructorUsedError;

  /// Serializes this BodyApiWhereModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyApiWhereModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyApiWhereModelCopyWith<BodyApiWhereModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyApiWhereModelCopyWith<$Res> {
  factory $BodyApiWhereModelCopyWith(
    BodyApiWhereModel value,
    $Res Function(BodyApiWhereModel) then,
  ) = _$BodyApiWhereModelCopyWithImpl<$Res, BodyApiWhereModel>;
  @useResult
  $Res call({String db_type, String store_code, Map<String, dynamic> where});
}

/// @nodoc
class _$BodyApiWhereModelCopyWithImpl<$Res, $Val extends BodyApiWhereModel>
    implements $BodyApiWhereModelCopyWith<$Res> {
  _$BodyApiWhereModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyApiWhereModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db_type = null,
    Object? store_code = null,
    Object? where = null,
  }) {
    return _then(
      _value.copyWith(
            db_type: null == db_type
                ? _value.db_type
                : db_type // ignore: cast_nullable_to_non_nullable
                      as String,
            store_code: null == store_code
                ? _value.store_code
                : store_code // ignore: cast_nullable_to_non_nullable
                      as String,
            where: null == where
                ? _value.where
                : where // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BodyApiWhereModelImplCopyWith<$Res>
    implements $BodyApiWhereModelCopyWith<$Res> {
  factory _$$BodyApiWhereModelImplCopyWith(
    _$BodyApiWhereModelImpl value,
    $Res Function(_$BodyApiWhereModelImpl) then,
  ) = __$$BodyApiWhereModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String db_type, String store_code, Map<String, dynamic> where});
}

/// @nodoc
class __$$BodyApiWhereModelImplCopyWithImpl<$Res>
    extends _$BodyApiWhereModelCopyWithImpl<$Res, _$BodyApiWhereModelImpl>
    implements _$$BodyApiWhereModelImplCopyWith<$Res> {
  __$$BodyApiWhereModelImplCopyWithImpl(
    _$BodyApiWhereModelImpl _value,
    $Res Function(_$BodyApiWhereModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BodyApiWhereModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db_type = null,
    Object? store_code = null,
    Object? where = null,
  }) {
    return _then(
      _$BodyApiWhereModelImpl(
        db_type: null == db_type
            ? _value.db_type
            : db_type // ignore: cast_nullable_to_non_nullable
                  as String,
        store_code: null == store_code
            ? _value.store_code
            : store_code // ignore: cast_nullable_to_non_nullable
                  as String,
        where: null == where
            ? _value._where
            : where // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyApiWhereModelImpl implements _BodyApiWhereModel {
  const _$BodyApiWhereModelImpl({
    this.db_type = "",
    this.store_code = "",
    final Map<String, dynamic> where = const {},
  }) : _where = where;

  factory _$BodyApiWhereModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyApiWhereModelImplFromJson(json);

  @override
  @JsonKey()
  final String db_type;
  @override
  @JsonKey()
  final String store_code;
  final Map<String, dynamic> _where;
  @override
  @JsonKey()
  Map<String, dynamic> get where {
    if (_where is EqualUnmodifiableMapView) return _where;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_where);
  }

  @override
  String toString() {
    return 'BodyApiWhereModel(db_type: $db_type, store_code: $store_code, where: $where)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyApiWhereModelImpl &&
            (identical(other.db_type, db_type) || other.db_type == db_type) &&
            (identical(other.store_code, store_code) ||
                other.store_code == store_code) &&
            const DeepCollectionEquality().equals(other._where, _where));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    db_type,
    store_code,
    const DeepCollectionEquality().hash(_where),
  );

  /// Create a copy of BodyApiWhereModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyApiWhereModelImplCopyWith<_$BodyApiWhereModelImpl> get copyWith =>
      __$$BodyApiWhereModelImplCopyWithImpl<_$BodyApiWhereModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyApiWhereModelImplToJson(this);
  }
}

abstract class _BodyApiWhereModel implements BodyApiWhereModel {
  const factory _BodyApiWhereModel({
    final String db_type,
    final String store_code,
    final Map<String, dynamic> where,
  }) = _$BodyApiWhereModelImpl;

  factory _BodyApiWhereModel.fromJson(Map<String, dynamic> json) =
      _$BodyApiWhereModelImpl.fromJson;

  @override
  String get db_type;
  @override
  String get store_code;
  @override
  Map<String, dynamic> get where;

  /// Create a copy of BodyApiWhereModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyApiWhereModelImplCopyWith<_$BodyApiWhereModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
