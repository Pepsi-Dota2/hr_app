// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EmployeesModel _$EmployeesModelFromJson(Map<String, dynamic> json) {
  return _EmployeesModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeesModel {
  int get emp_id => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  String get emp_name => throw _privateConstructorUsedError;
  int get emp_department_id => throw _privateConstructorUsedError;
  int get emp_position_id => throw _privateConstructorUsedError;
  String get emp_email => throw _privateConstructorUsedError;
  String get emp_tel => throw _privateConstructorUsedError;
  String get emp_birth_date => throw _privateConstructorUsedError;
  String get position_name => throw _privateConstructorUsedError;
  int get position_salary => throw _privateConstructorUsedError;
  String get department_name => throw _privateConstructorUsedError;
  String get department_code => throw _privateConstructorUsedError;
  String get emp_gender => throw _privateConstructorUsedError;
  String get emp_religion => throw _privateConstructorUsedError;
  String get emp_bank_account => throw _privateConstructorUsedError;
  String get emp_img => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
  List<String> get emp_day_off => throw _privateConstructorUsedError;

  /// Serializes this EmployeesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeesModelCopyWith<EmployeesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesModelCopyWith<$Res> {
  factory $EmployeesModelCopyWith(
    EmployeesModel value,
    $Res Function(EmployeesModel) then,
  ) = _$EmployeesModelCopyWithImpl<$Res, EmployeesModel>;
  @useResult
  $Res call({
    int emp_id,
    int user_id,
    String emp_name,
    int emp_department_id,
    int emp_position_id,
    String emp_email,
    String emp_tel,
    String emp_birth_date,
    String position_name,
    int position_salary,
    String department_name,
    String department_code,
    String emp_gender,
    String emp_religion,
    String emp_bank_account,
    String emp_img,
    String created_at,
    @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
    List<String> emp_day_off,
  });
}

/// @nodoc
class _$EmployeesModelCopyWithImpl<$Res, $Val extends EmployeesModel>
    implements $EmployeesModelCopyWith<$Res> {
  _$EmployeesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? user_id = null,
    Object? emp_name = null,
    Object? emp_department_id = null,
    Object? emp_position_id = null,
    Object? emp_email = null,
    Object? emp_tel = null,
    Object? emp_birth_date = null,
    Object? position_name = null,
    Object? position_salary = null,
    Object? department_name = null,
    Object? department_code = null,
    Object? emp_gender = null,
    Object? emp_religion = null,
    Object? emp_bank_account = null,
    Object? emp_img = null,
    Object? created_at = null,
    Object? emp_day_off = null,
  }) {
    return _then(
      _value.copyWith(
            emp_id: null == emp_id
                ? _value.emp_id
                : emp_id // ignore: cast_nullable_to_non_nullable
                      as int,
            user_id: null == user_id
                ? _value.user_id
                : user_id // ignore: cast_nullable_to_non_nullable
                      as int,
            emp_name: null == emp_name
                ? _value.emp_name
                : emp_name // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_department_id: null == emp_department_id
                ? _value.emp_department_id
                : emp_department_id // ignore: cast_nullable_to_non_nullable
                      as int,
            emp_position_id: null == emp_position_id
                ? _value.emp_position_id
                : emp_position_id // ignore: cast_nullable_to_non_nullable
                      as int,
            emp_email: null == emp_email
                ? _value.emp_email
                : emp_email // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_tel: null == emp_tel
                ? _value.emp_tel
                : emp_tel // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_birth_date: null == emp_birth_date
                ? _value.emp_birth_date
                : emp_birth_date // ignore: cast_nullable_to_non_nullable
                      as String,
            position_name: null == position_name
                ? _value.position_name
                : position_name // ignore: cast_nullable_to_non_nullable
                      as String,
            position_salary: null == position_salary
                ? _value.position_salary
                : position_salary // ignore: cast_nullable_to_non_nullable
                      as int,
            department_name: null == department_name
                ? _value.department_name
                : department_name // ignore: cast_nullable_to_non_nullable
                      as String,
            department_code: null == department_code
                ? _value.department_code
                : department_code // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_gender: null == emp_gender
                ? _value.emp_gender
                : emp_gender // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_religion: null == emp_religion
                ? _value.emp_religion
                : emp_religion // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_bank_account: null == emp_bank_account
                ? _value.emp_bank_account
                : emp_bank_account // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_img: null == emp_img
                ? _value.emp_img
                : emp_img // ignore: cast_nullable_to_non_nullable
                      as String,
            created_at: null == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as String,
            emp_day_off: null == emp_day_off
                ? _value.emp_day_off
                : emp_day_off // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmployeesModelImplCopyWith<$Res>
    implements $EmployeesModelCopyWith<$Res> {
  factory _$$EmployeesModelImplCopyWith(
    _$EmployeesModelImpl value,
    $Res Function(_$EmployeesModelImpl) then,
  ) = __$$EmployeesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int emp_id,
    int user_id,
    String emp_name,
    int emp_department_id,
    int emp_position_id,
    String emp_email,
    String emp_tel,
    String emp_birth_date,
    String position_name,
    int position_salary,
    String department_name,
    String department_code,
    String emp_gender,
    String emp_religion,
    String emp_bank_account,
    String emp_img,
    String created_at,
    @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
    List<String> emp_day_off,
  });
}

/// @nodoc
class __$$EmployeesModelImplCopyWithImpl<$Res>
    extends _$EmployeesModelCopyWithImpl<$Res, _$EmployeesModelImpl>
    implements _$$EmployeesModelImplCopyWith<$Res> {
  __$$EmployeesModelImplCopyWithImpl(
    _$EmployeesModelImpl _value,
    $Res Function(_$EmployeesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_id = null,
    Object? user_id = null,
    Object? emp_name = null,
    Object? emp_department_id = null,
    Object? emp_position_id = null,
    Object? emp_email = null,
    Object? emp_tel = null,
    Object? emp_birth_date = null,
    Object? position_name = null,
    Object? position_salary = null,
    Object? department_name = null,
    Object? department_code = null,
    Object? emp_gender = null,
    Object? emp_religion = null,
    Object? emp_bank_account = null,
    Object? emp_img = null,
    Object? created_at = null,
    Object? emp_day_off = null,
  }) {
    return _then(
      _$EmployeesModelImpl(
        emp_id: null == emp_id
            ? _value.emp_id
            : emp_id // ignore: cast_nullable_to_non_nullable
                  as int,
        user_id: null == user_id
            ? _value.user_id
            : user_id // ignore: cast_nullable_to_non_nullable
                  as int,
        emp_name: null == emp_name
            ? _value.emp_name
            : emp_name // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_department_id: null == emp_department_id
            ? _value.emp_department_id
            : emp_department_id // ignore: cast_nullable_to_non_nullable
                  as int,
        emp_position_id: null == emp_position_id
            ? _value.emp_position_id
            : emp_position_id // ignore: cast_nullable_to_non_nullable
                  as int,
        emp_email: null == emp_email
            ? _value.emp_email
            : emp_email // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_tel: null == emp_tel
            ? _value.emp_tel
            : emp_tel // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_birth_date: null == emp_birth_date
            ? _value.emp_birth_date
            : emp_birth_date // ignore: cast_nullable_to_non_nullable
                  as String,
        position_name: null == position_name
            ? _value.position_name
            : position_name // ignore: cast_nullable_to_non_nullable
                  as String,
        position_salary: null == position_salary
            ? _value.position_salary
            : position_salary // ignore: cast_nullable_to_non_nullable
                  as int,
        department_name: null == department_name
            ? _value.department_name
            : department_name // ignore: cast_nullable_to_non_nullable
                  as String,
        department_code: null == department_code
            ? _value.department_code
            : department_code // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_gender: null == emp_gender
            ? _value.emp_gender
            : emp_gender // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_religion: null == emp_religion
            ? _value.emp_religion
            : emp_religion // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_bank_account: null == emp_bank_account
            ? _value.emp_bank_account
            : emp_bank_account // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_img: null == emp_img
            ? _value.emp_img
            : emp_img // ignore: cast_nullable_to_non_nullable
                  as String,
        created_at: null == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as String,
        emp_day_off: null == emp_day_off
            ? _value._emp_day_off
            : emp_day_off // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeesModelImpl implements _EmployeesModel {
  const _$EmployeesModelImpl({
    this.emp_id = 0,
    this.user_id = 0,
    this.emp_name = "",
    this.emp_department_id = 0,
    this.emp_position_id = 0,
    this.emp_email = "",
    this.emp_tel = "",
    this.emp_birth_date = "",
    this.position_name = "",
    this.position_salary = 0,
    this.department_name = "",
    this.department_code = "",
    this.emp_gender = "",
    this.emp_religion = "",
    this.emp_bank_account = "",
    this.emp_img = "",
    this.created_at = "",
    @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
    final List<String> emp_day_off = const [],
  }) : _emp_day_off = emp_day_off;

  factory _$EmployeesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeesModelImplFromJson(json);

  @override
  @JsonKey()
  final int emp_id;
  @override
  @JsonKey()
  final int user_id;
  @override
  @JsonKey()
  final String emp_name;
  @override
  @JsonKey()
  final int emp_department_id;
  @override
  @JsonKey()
  final int emp_position_id;
  @override
  @JsonKey()
  final String emp_email;
  @override
  @JsonKey()
  final String emp_tel;
  @override
  @JsonKey()
  final String emp_birth_date;
  @override
  @JsonKey()
  final String position_name;
  @override
  @JsonKey()
  final int position_salary;
  @override
  @JsonKey()
  final String department_name;
  @override
  @JsonKey()
  final String department_code;
  @override
  @JsonKey()
  final String emp_gender;
  @override
  @JsonKey()
  final String emp_religion;
  @override
  @JsonKey()
  final String emp_bank_account;
  @override
  @JsonKey()
  final String emp_img;
  @override
  @JsonKey()
  final String created_at;
  final List<String> _emp_day_off;
  @override
  @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
  List<String> get emp_day_off {
    if (_emp_day_off is EqualUnmodifiableListView) return _emp_day_off;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_day_off);
  }

  @override
  String toString() {
    return 'EmployeesModel(emp_id: $emp_id, user_id: $user_id, emp_name: $emp_name, emp_department_id: $emp_department_id, emp_position_id: $emp_position_id, emp_email: $emp_email, emp_tel: $emp_tel, emp_birth_date: $emp_birth_date, position_name: $position_name, position_salary: $position_salary, department_name: $department_name, department_code: $department_code, emp_gender: $emp_gender, emp_religion: $emp_religion, emp_bank_account: $emp_bank_account, emp_img: $emp_img, created_at: $created_at, emp_day_off: $emp_day_off)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeesModelImpl &&
            (identical(other.emp_id, emp_id) || other.emp_id == emp_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.emp_name, emp_name) ||
                other.emp_name == emp_name) &&
            (identical(other.emp_department_id, emp_department_id) ||
                other.emp_department_id == emp_department_id) &&
            (identical(other.emp_position_id, emp_position_id) ||
                other.emp_position_id == emp_position_id) &&
            (identical(other.emp_email, emp_email) ||
                other.emp_email == emp_email) &&
            (identical(other.emp_tel, emp_tel) || other.emp_tel == emp_tel) &&
            (identical(other.emp_birth_date, emp_birth_date) ||
                other.emp_birth_date == emp_birth_date) &&
            (identical(other.position_name, position_name) ||
                other.position_name == position_name) &&
            (identical(other.position_salary, position_salary) ||
                other.position_salary == position_salary) &&
            (identical(other.department_name, department_name) ||
                other.department_name == department_name) &&
            (identical(other.department_code, department_code) ||
                other.department_code == department_code) &&
            (identical(other.emp_gender, emp_gender) ||
                other.emp_gender == emp_gender) &&
            (identical(other.emp_religion, emp_religion) ||
                other.emp_religion == emp_religion) &&
            (identical(other.emp_bank_account, emp_bank_account) ||
                other.emp_bank_account == emp_bank_account) &&
            (identical(other.emp_img, emp_img) || other.emp_img == emp_img) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality().equals(
              other._emp_day_off,
              _emp_day_off,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    emp_id,
    user_id,
    emp_name,
    emp_department_id,
    emp_position_id,
    emp_email,
    emp_tel,
    emp_birth_date,
    position_name,
    position_salary,
    department_name,
    department_code,
    emp_gender,
    emp_religion,
    emp_bank_account,
    emp_img,
    created_at,
    const DeepCollectionEquality().hash(_emp_day_off),
  );

  /// Create a copy of EmployeesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeesModelImplCopyWith<_$EmployeesModelImpl> get copyWith =>
      __$$EmployeesModelImplCopyWithImpl<_$EmployeesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeesModelImplToJson(this);
  }
}

abstract class _EmployeesModel implements EmployeesModel {
  const factory _EmployeesModel({
    final int emp_id,
    final int user_id,
    final String emp_name,
    final int emp_department_id,
    final int emp_position_id,
    final String emp_email,
    final String emp_tel,
    final String emp_birth_date,
    final String position_name,
    final int position_salary,
    final String department_name,
    final String department_code,
    final String emp_gender,
    final String emp_religion,
    final String emp_bank_account,
    final String emp_img,
    final String created_at,
    @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
    final List<String> emp_day_off,
  }) = _$EmployeesModelImpl;

  factory _EmployeesModel.fromJson(Map<String, dynamic> json) =
      _$EmployeesModelImpl.fromJson;

  @override
  int get emp_id;
  @override
  int get user_id;
  @override
  String get emp_name;
  @override
  int get emp_department_id;
  @override
  int get emp_position_id;
  @override
  String get emp_email;
  @override
  String get emp_tel;
  @override
  String get emp_birth_date;
  @override
  String get position_name;
  @override
  int get position_salary;
  @override
  String get department_name;
  @override
  String get department_code;
  @override
  String get emp_gender;
  @override
  String get emp_religion;
  @override
  String get emp_bank_account;
  @override
  String get emp_img;
  @override
  String get created_at;
  @override
  @JsonKey(fromJson: parseDayOff, toJson: dayOffToString)
  List<String> get emp_day_off;

  /// Create a copy of EmployeesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeesModelImplCopyWith<_$EmployeesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
