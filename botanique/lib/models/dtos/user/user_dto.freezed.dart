// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) {
  return _UpdateUserDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserDto {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get base64Image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$UpdateUserDtoImpl implements _UpdateUserDto {
  _$UpdateUserDtoImpl({this.username, this.password, this.base64Image});

  factory _$UpdateUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserDtoImplFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, base64Image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDtoImplCopyWith<_$UpdateUserDtoImpl> get copyWith =>
      __$$UpdateUserDtoImplCopyWithImpl<_$UpdateUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserDto implements UpdateUserDto {
  factory _UpdateUserDto(
      {final String? username,
      final String? password,
      final String? base64Image}) = _$UpdateUserDtoImpl;

  factory _UpdateUserDto.fromJson(Map<String, dynamic> json) =
      _$UpdateUserDtoImpl.fromJson;

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

GetUserDto _$GetUserDtoFromJson(Map<String, dynamic> json) {
  return _GetUserDto.fromJson(json);
}

/// @nodoc
mixin _$GetUserDto {
  String get userEmail => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get blobUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserDtoCopyWith<GetUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDtoCopyWith<$Res> {
  factory $GetUserDtoCopyWith(
          GetUserDto value, $Res Function(GetUserDto) then) =
      _$GetUserDtoCopyWithImpl<$Res, GetUserDto>;
  @useResult
  $Res call({String userEmail, String username, String? blobUrl});
}

/// @nodoc
class _$GetUserDtoCopyWithImpl<$Res, $Val extends GetUserDto>
    implements $GetUserDtoCopyWith<$Res> {
  _$GetUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? username = null,
    Object? blobUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      blobUrl: freezed == blobUrl
          ? _value.blobUrl
          : blobUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserDtoImplCopyWith<$Res>
    implements $GetUserDtoCopyWith<$Res> {
  factory _$$GetUserDtoImplCopyWith(
          _$GetUserDtoImpl value, $Res Function(_$GetUserDtoImpl) then) =
      __$$GetUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userEmail, String username, String? blobUrl});
}

/// @nodoc
class __$$GetUserDtoImplCopyWithImpl<$Res>
    extends _$GetUserDtoCopyWithImpl<$Res, _$GetUserDtoImpl>
    implements _$$GetUserDtoImplCopyWith<$Res> {
  __$$GetUserDtoImplCopyWithImpl(
      _$GetUserDtoImpl _value, $Res Function(_$GetUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? username = null,
    Object? blobUrl = freezed,
  }) {
    return _then(_$GetUserDtoImpl(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      blobUrl: freezed == blobUrl
          ? _value.blobUrl
          : blobUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserDtoImpl implements _GetUserDto {
  _$GetUserDtoImpl(
      {required this.userEmail, required this.username, this.blobUrl});

  factory _$GetUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserDtoImplFromJson(json);

  @override
  final String userEmail;
  @override
  final String username;
  @override
  final String? blobUrl;

  @override
  String toString() {
    return 'GetUserDto(userEmail: $userEmail, username: $username, blobUrl: $blobUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDtoImpl &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.blobUrl, blobUrl) || other.blobUrl == blobUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEmail, username, blobUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDtoImplCopyWith<_$GetUserDtoImpl> get copyWith =>
      __$$GetUserDtoImplCopyWithImpl<_$GetUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserDtoImplToJson(
      this,
    );
  }
}

abstract class _GetUserDto implements GetUserDto {
  factory _GetUserDto(
      {required final String userEmail,
      required final String username,
      final String? blobUrl}) = _$GetUserDtoImpl;

  factory _GetUserDto.fromJson(Map<String, dynamic> json) =
      _$GetUserDtoImpl.fromJson;

  @override
  String get userEmail;
  @override
  String get username;
  @override
  String? get blobUrl;
  @override
  @JsonKey(ignore: true)
  _$$GetUserDtoImplCopyWith<_$GetUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
