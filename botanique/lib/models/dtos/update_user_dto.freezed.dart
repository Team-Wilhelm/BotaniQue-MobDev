// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateUserDto {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get base64Image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateUserDtoCopyWith<UpdateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserDtoCopyWith<$Res> {
  factory $UpdateUserDtoCopyWith(
          UpdateUserDto value, $Res Function(UpdateUserDto) then) =
      _$UpdateUserDtoCopyWithImpl<$Res, UpdateUserDto>;
  @useResult
  $Res call({String? username, String? password, String? base64Image});
}

/// @nodoc
class _$UpdateUserDtoCopyWithImpl<$Res, $Val extends UpdateUserDto>
    implements $UpdateUserDtoCopyWith<$Res> {
  _$UpdateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? base64Image = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserDtoImplCopyWith<$Res>
    implements $UpdateUserDtoCopyWith<$Res> {
  factory _$$UpdateUserDtoImplCopyWith(
          _$UpdateUserDtoImpl value, $Res Function(_$UpdateUserDtoImpl) then) =
      __$$UpdateUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? password, String? base64Image});
}

/// @nodoc
class __$$UpdateUserDtoImplCopyWithImpl<$Res>
    extends _$UpdateUserDtoCopyWithImpl<$Res, _$UpdateUserDtoImpl>
    implements _$$UpdateUserDtoImplCopyWith<$Res> {
  __$$UpdateUserDtoImplCopyWithImpl(
      _$UpdateUserDtoImpl _value, $Res Function(_$UpdateUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? base64Image = freezed,
  }) {
    return _then(_$UpdateUserDtoImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateUserDtoImpl implements _UpdateUserDto {
  _$UpdateUserDtoImpl(
      {required this.username,
      required this.password,
      required this.base64Image});

  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? base64Image;

  @override
  String toString() {
    return 'UpdateUserDto(username: $username, password: $password, base64Image: $base64Image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password, base64Image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDtoImplCopyWith<_$UpdateUserDtoImpl> get copyWith =>
      __$$UpdateUserDtoImplCopyWithImpl<_$UpdateUserDtoImpl>(this, _$identity);
}

abstract class _UpdateUserDto implements UpdateUserDto {
  factory _UpdateUserDto(
      {required final String? username,
      required final String? password,
      required final String? base64Image}) = _$UpdateUserDtoImpl;

  @override
  String? get username;
  @override
  String? get password;
  @override
  String? get base64Image;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserDtoImplCopyWith<_$UpdateUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
