// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserAuthModel _$UserAuthModelFromJson(Map<String, dynamic> json) {
  return _UserAuthModel.fromJson(json);
}

/// @nodoc
mixin _$UserAuthModel {
  String get user_email => throw _privateConstructorUsedError;
  String get user_password => throw _privateConstructorUsedError;
  String get user_name => throw _privateConstructorUsedError;

  /// Serializes this UserAuthModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAuthModelCopyWith<UserAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthModelCopyWith<$Res> {
  factory $UserAuthModelCopyWith(
    UserAuthModel value,
    $Res Function(UserAuthModel) then,
  ) = _$UserAuthModelCopyWithImpl<$Res, UserAuthModel>;
  @useResult
  $Res call({String user_email, String user_password, String user_name});
}

/// @nodoc
class _$UserAuthModelCopyWithImpl<$Res, $Val extends UserAuthModel>
    implements $UserAuthModelCopyWith<$Res> {
  _$UserAuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_email = null,
    Object? user_password = null,
    Object? user_name = null,
  }) {
    return _then(
      _value.copyWith(
            user_email: null == user_email
                ? _value.user_email
                : user_email // ignore: cast_nullable_to_non_nullable
                      as String,
            user_password: null == user_password
                ? _value.user_password
                : user_password // ignore: cast_nullable_to_non_nullable
                      as String,
            user_name: null == user_name
                ? _value.user_name
                : user_name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserAuthModelImplCopyWith<$Res>
    implements $UserAuthModelCopyWith<$Res> {
  factory _$$UserAuthModelImplCopyWith(
    _$UserAuthModelImpl value,
    $Res Function(_$UserAuthModelImpl) then,
  ) = __$$UserAuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String user_email, String user_password, String user_name});
}

/// @nodoc
class __$$UserAuthModelImplCopyWithImpl<$Res>
    extends _$UserAuthModelCopyWithImpl<$Res, _$UserAuthModelImpl>
    implements _$$UserAuthModelImplCopyWith<$Res> {
  __$$UserAuthModelImplCopyWithImpl(
    _$UserAuthModelImpl _value,
    $Res Function(_$UserAuthModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_email = null,
    Object? user_password = null,
    Object? user_name = null,
  }) {
    return _then(
      _$UserAuthModelImpl(
        user_email: null == user_email
            ? _value.user_email
            : user_email // ignore: cast_nullable_to_non_nullable
                  as String,
        user_password: null == user_password
            ? _value.user_password
            : user_password // ignore: cast_nullable_to_non_nullable
                  as String,
        user_name: null == user_name
            ? _value.user_name
            : user_name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthModelImpl implements _UserAuthModel {
  const _$UserAuthModelImpl({
    this.user_email = "",
    this.user_password = "",
    this.user_name = "",
  });

  factory _$UserAuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthModelImplFromJson(json);

  @override
  @JsonKey()
  final String user_email;
  @override
  @JsonKey()
  final String user_password;
  @override
  @JsonKey()
  final String user_name;

  @override
  String toString() {
    return 'UserAuthModel(user_email: $user_email, user_password: $user_password, user_name: $user_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthModelImpl &&
            (identical(other.user_email, user_email) ||
                other.user_email == user_email) &&
            (identical(other.user_password, user_password) ||
                other.user_password == user_password) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user_email, user_password, user_name);

  /// Create a copy of UserAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthModelImplCopyWith<_$UserAuthModelImpl> get copyWith =>
      __$$UserAuthModelImplCopyWithImpl<_$UserAuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthModelImplToJson(this);
  }
}

abstract class _UserAuthModel implements UserAuthModel {
  const factory _UserAuthModel({
    final String user_email,
    final String user_password,
    final String user_name,
  }) = _$UserAuthModelImpl;

  factory _UserAuthModel.fromJson(Map<String, dynamic> json) =
      _$UserAuthModelImpl.fromJson;

  @override
  String get user_email;
  @override
  String get user_password;
  @override
  String get user_name;

  /// Create a copy of UserAuthModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthModelImplCopyWith<_$UserAuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
