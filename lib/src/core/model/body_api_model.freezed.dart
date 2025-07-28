// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BodyApiModel _$BodyApiModelFromJson(Map<String, dynamic> json) {
  return _BodyApiModel.fromJson(json);
}

/// @nodoc
mixin _$BodyApiModel {
  String get db_type => throw _privateConstructorUsedError;
  String get store_code => throw _privateConstructorUsedError;
  Map<String, dynamic> get set => throw _privateConstructorUsedError;
  Map<String, dynamic> get where => throw _privateConstructorUsedError;

  /// Serializes this BodyApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyApiModelCopyWith<BodyApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyApiModelCopyWith<$Res> {
  factory $BodyApiModelCopyWith(
    BodyApiModel value,
    $Res Function(BodyApiModel) then,
  ) = _$BodyApiModelCopyWithImpl<$Res, BodyApiModel>;
  @useResult
  $Res call({
    String db_type,
    String store_code,
    Map<String, dynamic> set,
    Map<String, dynamic> where,
  });
}

/// @nodoc
class _$BodyApiModelCopyWithImpl<$Res, $Val extends BodyApiModel>
    implements $BodyApiModelCopyWith<$Res> {
  _$BodyApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db_type = null,
    Object? store_code = null,
    Object? set = null,
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
            set: null == set
                ? _value.set
                : set // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
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
abstract class _$$BodyApiModelImplCopyWith<$Res>
    implements $BodyApiModelCopyWith<$Res> {
  factory _$$BodyApiModelImplCopyWith(
    _$BodyApiModelImpl value,
    $Res Function(_$BodyApiModelImpl) then,
  ) = __$$BodyApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String db_type,
    String store_code,
    Map<String, dynamic> set,
    Map<String, dynamic> where,
  });
}

/// @nodoc
class __$$BodyApiModelImplCopyWithImpl<$Res>
    extends _$BodyApiModelCopyWithImpl<$Res, _$BodyApiModelImpl>
    implements _$$BodyApiModelImplCopyWith<$Res> {
  __$$BodyApiModelImplCopyWithImpl(
    _$BodyApiModelImpl _value,
    $Res Function(_$BodyApiModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BodyApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? db_type = null,
    Object? store_code = null,
    Object? set = null,
    Object? where = null,
  }) {
    return _then(
      _$BodyApiModelImpl(
        db_type: null == db_type
            ? _value.db_type
            : db_type // ignore: cast_nullable_to_non_nullable
                  as String,
        store_code: null == store_code
            ? _value.store_code
            : store_code // ignore: cast_nullable_to_non_nullable
                  as String,
        set: null == set
            ? _value._set
            : set // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
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
class _$BodyApiModelImpl implements _BodyApiModel {
  const _$BodyApiModelImpl({
    this.db_type = "",
    this.store_code = "",
    final Map<String, dynamic> set = const {},
    final Map<String, dynamic> where = const {},
  }) : _set = set,
       _where = where;

  factory _$BodyApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyApiModelImplFromJson(json);

  @override
  @JsonKey()
  final String db_type;
  @override
  @JsonKey()
  final String store_code;
  final Map<String, dynamic> _set;
  @override
  @JsonKey()
  Map<String, dynamic> get set {
    if (_set is EqualUnmodifiableMapView) return _set;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_set);
  }

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
    return 'BodyApiModel(db_type: $db_type, store_code: $store_code, set: $set, where: $where)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyApiModelImpl &&
            (identical(other.db_type, db_type) || other.db_type == db_type) &&
            (identical(other.store_code, store_code) ||
                other.store_code == store_code) &&
            const DeepCollectionEquality().equals(other._set, _set) &&
            const DeepCollectionEquality().equals(other._where, _where));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    db_type,
    store_code,
    const DeepCollectionEquality().hash(_set),
    const DeepCollectionEquality().hash(_where),
  );

  /// Create a copy of BodyApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyApiModelImplCopyWith<_$BodyApiModelImpl> get copyWith =>
      __$$BodyApiModelImplCopyWithImpl<_$BodyApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyApiModelImplToJson(this);
  }
}

abstract class _BodyApiModel implements BodyApiModel {
  const factory _BodyApiModel({
    final String db_type,
    final String store_code,
    final Map<String, dynamic> set,
    final Map<String, dynamic> where,
  }) = _$BodyApiModelImpl;

  factory _BodyApiModel.fromJson(Map<String, dynamic> json) =
      _$BodyApiModelImpl.fromJson;

  @override
  String get db_type;
  @override
  String get store_code;
  @override
  Map<String, dynamic> get set;
  @override
  Map<String, dynamic> get where;

  /// Create a copy of BodyApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyApiModelImplCopyWith<_$BodyApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
