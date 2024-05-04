// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientEventWithJwt {
  String get jwt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientEventWithJwtCopyWith<ClientEventWithJwt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventWithJwtCopyWith<$Res> {
  factory $ClientEventWithJwtCopyWith(
          ClientEventWithJwt value, $Res Function(ClientEventWithJwt) then) =
      _$ClientEventWithJwtCopyWithImpl<$Res, ClientEventWithJwt>;
  @useResult
  $Res call({String jwt});
}

/// @nodoc
class _$ClientEventWithJwtCopyWithImpl<$Res, $Val extends ClientEventWithJwt>
    implements $ClientEventWithJwtCopyWith<$Res> {
  _$ClientEventWithJwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientEventWithJwtImplCopyWith<$Res>
    implements $ClientEventWithJwtCopyWith<$Res> {
  factory _$$ClientEventWithJwtImplCopyWith(_$ClientEventWithJwtImpl value,
          $Res Function(_$ClientEventWithJwtImpl) then) =
      __$$ClientEventWithJwtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt});
}

/// @nodoc
class __$$ClientEventWithJwtImplCopyWithImpl<$Res>
    extends _$ClientEventWithJwtCopyWithImpl<$Res, _$ClientEventWithJwtImpl>
    implements _$$ClientEventWithJwtImplCopyWith<$Res> {
  __$$ClientEventWithJwtImplCopyWithImpl(_$ClientEventWithJwtImpl _value,
      $Res Function(_$ClientEventWithJwtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
  }) {
    return _then(_$ClientEventWithJwtImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientEventWithJwtImpl implements _ClientEventWithJwt {
  const _$ClientEventWithJwtImpl({required this.jwt});

  @override
  final String jwt;

  @override
  String toString() {
    return 'ClientEventWithJwt(jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientEventWithJwtImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientEventWithJwtImplCopyWith<_$ClientEventWithJwtImpl> get copyWith =>
      __$$ClientEventWithJwtImplCopyWithImpl<_$ClientEventWithJwtImpl>(
          this, _$identity);
}

abstract class _ClientEventWithJwt implements ClientEventWithJwt {
  const factory _ClientEventWithJwt({required final String jwt}) =
      _$ClientEventWithJwtImpl;

  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ClientEventWithJwtImplCopyWith<_$ClientEventWithJwtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientWantsToRemoveBackgroundFromImage
    _$ClientWantsToRemoveBackgroundFromImageFromJson(
        Map<String, dynamic> json) {
  return _ClientWantsToRemoveBackgroundFromImage.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToRemoveBackgroundFromImage {
  String get base64Image => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToRemoveBackgroundFromImageCopyWith<
          ClientWantsToRemoveBackgroundFromImage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToRemoveBackgroundFromImageCopyWith<$Res> {
  factory $ClientWantsToRemoveBackgroundFromImageCopyWith(
          ClientWantsToRemoveBackgroundFromImage value,
          $Res Function(ClientWantsToRemoveBackgroundFromImage) then) =
      _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$Res,
          ClientWantsToRemoveBackgroundFromImage>;
  @useResult
  $Res call({String base64Image, String jwt, String eventType});
}

/// @nodoc
class _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$Res,
        $Val extends ClientWantsToRemoveBackgroundFromImage>
    implements $ClientWantsToRemoveBackgroundFromImageCopyWith<$Res> {
  _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<$Res>
    implements $ClientWantsToRemoveBackgroundFromImageCopyWith<$Res> {
  factory _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith(
          _$ClientWantsToRemoveBackgroundFromImageImpl value,
          $Res Function(_$ClientWantsToRemoveBackgroundFromImageImpl) then) =
      __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base64Image, String jwt, String eventType});
}

/// @nodoc
class __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl<$Res>
    extends _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$Res,
        _$ClientWantsToRemoveBackgroundFromImageImpl>
    implements _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<$Res> {
  __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl(
      _$ClientWantsToRemoveBackgroundFromImageImpl _value,
      $Res Function(_$ClientWantsToRemoveBackgroundFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToRemoveBackgroundFromImageImpl(
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToRemoveBackgroundFromImageImpl
    implements _ClientWantsToRemoveBackgroundFromImage {
  const _$ClientWantsToRemoveBackgroundFromImageImpl(
      {required this.base64Image, required this.jwt, required this.eventType});

  factory _$ClientWantsToRemoveBackgroundFromImageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToRemoveBackgroundFromImageImplFromJson(json);

  @override
  final String base64Image;
  @override
  final String jwt;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToRemoveBackgroundFromImage(base64Image: $base64Image, jwt: $jwt, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToRemoveBackgroundFromImageImpl &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image, jwt, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<
          _$ClientWantsToRemoveBackgroundFromImageImpl>
      get copyWith =>
          __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl<
              _$ClientWantsToRemoveBackgroundFromImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToRemoveBackgroundFromImageImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToRemoveBackgroundFromImage
    implements ClientWantsToRemoveBackgroundFromImage {
  const factory _ClientWantsToRemoveBackgroundFromImage(
          {required final String base64Image,
          required final String jwt,
          required final String eventType}) =
      _$ClientWantsToRemoveBackgroundFromImageImpl;

  factory _ClientWantsToRemoveBackgroundFromImage.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToRemoveBackgroundFromImageImpl.fromJson;

  @override
  String get base64Image;
  @override
  String get jwt;
  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<
          _$ClientWantsToRemoveBackgroundFromImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToCreatePlant _$ClientWantsToCreatePlantFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToCreatePlant.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToCreatePlant {
  CreatePlantDto get createPlantDto => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToCreatePlantCopyWith<ClientWantsToCreatePlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToCreatePlantCopyWith<$Res> {
  factory $ClientWantsToCreatePlantCopyWith(ClientWantsToCreatePlant value,
          $Res Function(ClientWantsToCreatePlant) then) =
      _$ClientWantsToCreatePlantCopyWithImpl<$Res, ClientWantsToCreatePlant>;
  @useResult
  $Res call({CreatePlantDto createPlantDto, String jwt, String eventType});

  $CreatePlantDtoCopyWith<$Res> get createPlantDto;
}

/// @nodoc
class _$ClientWantsToCreatePlantCopyWithImpl<$Res,
        $Val extends ClientWantsToCreatePlant>
    implements $ClientWantsToCreatePlantCopyWith<$Res> {
  _$ClientWantsToCreatePlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPlantDto = null,
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      createPlantDto: null == createPlantDto
          ? _value.createPlantDto
          : createPlantDto // ignore: cast_nullable_to_non_nullable
              as CreatePlantDto,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatePlantDtoCopyWith<$Res> get createPlantDto {
    return $CreatePlantDtoCopyWith<$Res>(_value.createPlantDto, (value) {
      return _then(_value.copyWith(createPlantDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientWantsToCreatePlantImplCopyWith<$Res>
    implements $ClientWantsToCreatePlantCopyWith<$Res> {
  factory _$$ClientWantsToCreatePlantImplCopyWith(
          _$ClientWantsToCreatePlantImpl value,
          $Res Function(_$ClientWantsToCreatePlantImpl) then) =
      __$$ClientWantsToCreatePlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreatePlantDto createPlantDto, String jwt, String eventType});

  @override
  $CreatePlantDtoCopyWith<$Res> get createPlantDto;
}

/// @nodoc
class __$$ClientWantsToCreatePlantImplCopyWithImpl<$Res>
    extends _$ClientWantsToCreatePlantCopyWithImpl<$Res,
        _$ClientWantsToCreatePlantImpl>
    implements _$$ClientWantsToCreatePlantImplCopyWith<$Res> {
  __$$ClientWantsToCreatePlantImplCopyWithImpl(
      _$ClientWantsToCreatePlantImpl _value,
      $Res Function(_$ClientWantsToCreatePlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPlantDto = null,
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToCreatePlantImpl(
      createPlantDto: null == createPlantDto
          ? _value.createPlantDto
          : createPlantDto // ignore: cast_nullable_to_non_nullable
              as CreatePlantDto,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToCreatePlantImpl implements _ClientWantsToCreatePlant {
  const _$ClientWantsToCreatePlantImpl(
      {required this.createPlantDto,
      required this.jwt,
      required this.eventType});

  factory _$ClientWantsToCreatePlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToCreatePlantImplFromJson(json);

  @override
  final CreatePlantDto createPlantDto;
  @override
  final String jwt;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToCreatePlant(createPlantDto: $createPlantDto, jwt: $jwt, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToCreatePlantImpl &&
            (identical(other.createPlantDto, createPlantDto) ||
                other.createPlantDto == createPlantDto) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createPlantDto, jwt, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToCreatePlantImplCopyWith<_$ClientWantsToCreatePlantImpl>
      get copyWith => __$$ClientWantsToCreatePlantImplCopyWithImpl<
          _$ClientWantsToCreatePlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToCreatePlantImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToCreatePlant implements ClientWantsToCreatePlant {
  const factory _ClientWantsToCreatePlant(
      {required final CreatePlantDto createPlantDto,
      required final String jwt,
      required final String eventType}) = _$ClientWantsToCreatePlantImpl;

  factory _ClientWantsToCreatePlant.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToCreatePlantImpl.fromJson;

  @override
  CreatePlantDto get createPlantDto;
  @override
  String get jwt;
  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToCreatePlantImplCopyWith<_$ClientWantsToCreatePlantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToLogIn _$ClientWantsToLogInFromJson(Map<String, dynamic> json) {
  return _ClientWantsToLogIn.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogIn {
  LoginDto get loginDto => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLogInCopyWith<ClientWantsToLogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLogInCopyWith<$Res> {
  factory $ClientWantsToLogInCopyWith(
          ClientWantsToLogIn value, $Res Function(ClientWantsToLogIn) then) =
      _$ClientWantsToLogInCopyWithImpl<$Res, ClientWantsToLogIn>;
  @useResult
  $Res call({LoginDto loginDto, String eventType});

  $LoginDtoCopyWith<$Res> get loginDto;
}

/// @nodoc
class _$ClientWantsToLogInCopyWithImpl<$Res, $Val extends ClientWantsToLogIn>
    implements $ClientWantsToLogInCopyWith<$Res> {
  _$ClientWantsToLogInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDto = null,
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      loginDto: null == loginDto
          ? _value.loginDto
          : loginDto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDtoCopyWith<$Res> get loginDto {
    return $LoginDtoCopyWith<$Res>(_value.loginDto, (value) {
      return _then(_value.copyWith(loginDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientWantsToLogInImplCopyWith<$Res>
    implements $ClientWantsToLogInCopyWith<$Res> {
  factory _$$ClientWantsToLogInImplCopyWith(_$ClientWantsToLogInImpl value,
          $Res Function(_$ClientWantsToLogInImpl) then) =
      __$$ClientWantsToLogInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginDto loginDto, String eventType});

  @override
  $LoginDtoCopyWith<$Res> get loginDto;
}

/// @nodoc
class __$$ClientWantsToLogInImplCopyWithImpl<$Res>
    extends _$ClientWantsToLogInCopyWithImpl<$Res, _$ClientWantsToLogInImpl>
    implements _$$ClientWantsToLogInImplCopyWith<$Res> {
  __$$ClientWantsToLogInImplCopyWithImpl(_$ClientWantsToLogInImpl _value,
      $Res Function(_$ClientWantsToLogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDto = null,
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToLogInImpl(
      loginDto: null == loginDto
          ? _value.loginDto
          : loginDto // ignore: cast_nullable_to_non_nullable
              as LoginDto,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLogInImpl implements _ClientWantsToLogIn {
  _$ClientWantsToLogInImpl({required this.loginDto, required this.eventType});

  factory _$ClientWantsToLogInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogInImplFromJson(json);

  @override
  final LoginDto loginDto;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToLogIn(loginDto: $loginDto, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogInImpl &&
            (identical(other.loginDto, loginDto) ||
                other.loginDto == loginDto) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loginDto, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogInImplCopyWith<_$ClientWantsToLogInImpl> get copyWith =>
      __$$ClientWantsToLogInImplCopyWithImpl<_$ClientWantsToLogInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLogInImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLogIn implements ClientWantsToLogIn {
  factory _ClientWantsToLogIn(
      {required final LoginDto loginDto,
      required final String eventType}) = _$ClientWantsToLogInImpl;

  factory _ClientWantsToLogIn.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogInImpl.fromJson;

  @override
  LoginDto get loginDto;
  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLogInImplCopyWith<_$ClientWantsToLogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientWantsToCheckJwtValidity _$ClientWantsToCheckJwtValidityFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToCheckJwtValidity.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToCheckJwtValidity {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToCheckJwtValidityCopyWith<ClientWantsToCheckJwtValidity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToCheckJwtValidityCopyWith<$Res> {
  factory $ClientWantsToCheckJwtValidityCopyWith(
          ClientWantsToCheckJwtValidity value,
          $Res Function(ClientWantsToCheckJwtValidity) then) =
      _$ClientWantsToCheckJwtValidityCopyWithImpl<$Res,
          ClientWantsToCheckJwtValidity>;
  @useResult
  $Res call({String jwt, String eventType});
}

/// @nodoc
class _$ClientWantsToCheckJwtValidityCopyWithImpl<$Res,
        $Val extends ClientWantsToCheckJwtValidity>
    implements $ClientWantsToCheckJwtValidityCopyWith<$Res> {
  _$ClientWantsToCheckJwtValidityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToCheckJwtValidityImplCopyWith<$Res>
    implements $ClientWantsToCheckJwtValidityCopyWith<$Res> {
  factory _$$ClientWantsToCheckJwtValidityImplCopyWith(
          _$ClientWantsToCheckJwtValidityImpl value,
          $Res Function(_$ClientWantsToCheckJwtValidityImpl) then) =
      __$$ClientWantsToCheckJwtValidityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType});
}

/// @nodoc
class __$$ClientWantsToCheckJwtValidityImplCopyWithImpl<$Res>
    extends _$ClientWantsToCheckJwtValidityCopyWithImpl<$Res,
        _$ClientWantsToCheckJwtValidityImpl>
    implements _$$ClientWantsToCheckJwtValidityImplCopyWith<$Res> {
  __$$ClientWantsToCheckJwtValidityImplCopyWithImpl(
      _$ClientWantsToCheckJwtValidityImpl _value,
      $Res Function(_$ClientWantsToCheckJwtValidityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToCheckJwtValidityImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToCheckJwtValidityImpl
    implements _ClientWantsToCheckJwtValidity {
  _$ClientWantsToCheckJwtValidityImpl(
      {required this.jwt, required this.eventType});

  factory _$ClientWantsToCheckJwtValidityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToCheckJwtValidityImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToCheckJwtValidity(jwt: $jwt, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToCheckJwtValidityImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToCheckJwtValidityImplCopyWith<
          _$ClientWantsToCheckJwtValidityImpl>
      get copyWith => __$$ClientWantsToCheckJwtValidityImplCopyWithImpl<
          _$ClientWantsToCheckJwtValidityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToCheckJwtValidityImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToCheckJwtValidity
    implements ClientWantsToCheckJwtValidity {
  factory _ClientWantsToCheckJwtValidity(
      {required final String jwt,
      required final String eventType}) = _$ClientWantsToCheckJwtValidityImpl;

  factory _ClientWantsToCheckJwtValidity.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToCheckJwtValidityImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToCheckJwtValidityImplCopyWith<
          _$ClientWantsToCheckJwtValidityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToLogOutDto _$ClientWantsToLogOutDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToLogOutDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogOutDto {
  String get email => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLogOutDtoCopyWith<ClientWantsToLogOutDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLogOutDtoCopyWith<$Res> {
  factory $ClientWantsToLogOutDtoCopyWith(ClientWantsToLogOutDto value,
          $Res Function(ClientWantsToLogOutDto) then) =
      _$ClientWantsToLogOutDtoCopyWithImpl<$Res, ClientWantsToLogOutDto>;
  @useResult
  $Res call({String email, String eventType});
}

/// @nodoc
class _$ClientWantsToLogOutDtoCopyWithImpl<$Res,
        $Val extends ClientWantsToLogOutDto>
    implements $ClientWantsToLogOutDtoCopyWith<$Res> {
  _$ClientWantsToLogOutDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToLogOutDtoImplCopyWith<$Res>
    implements $ClientWantsToLogOutDtoCopyWith<$Res> {
  factory _$$ClientWantsToLogOutDtoImplCopyWith(
          _$ClientWantsToLogOutDtoImpl value,
          $Res Function(_$ClientWantsToLogOutDtoImpl) then) =
      __$$ClientWantsToLogOutDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String eventType});
}

/// @nodoc
class __$$ClientWantsToLogOutDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsToLogOutDtoCopyWithImpl<$Res,
        _$ClientWantsToLogOutDtoImpl>
    implements _$$ClientWantsToLogOutDtoImplCopyWith<$Res> {
  __$$ClientWantsToLogOutDtoImplCopyWithImpl(
      _$ClientWantsToLogOutDtoImpl _value,
      $Res Function(_$ClientWantsToLogOutDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToLogOutDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLogOutDtoImpl implements _ClientWantsToLogOutDto {
  _$ClientWantsToLogOutDtoImpl({required this.email, required this.eventType});

  factory _$ClientWantsToLogOutDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogOutDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToLogOutDto(email: $email, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogOutDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogOutDtoImplCopyWith<_$ClientWantsToLogOutDtoImpl>
      get copyWith => __$$ClientWantsToLogOutDtoImplCopyWithImpl<
          _$ClientWantsToLogOutDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLogOutDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLogOutDto implements ClientWantsToLogOutDto {
  factory _ClientWantsToLogOutDto(
      {required final String email,
      required final String eventType}) = _$ClientWantsToLogOutDtoImpl;

  factory _ClientWantsToLogOutDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogOutDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLogOutDtoImplCopyWith<_$ClientWantsToLogOutDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsPlantById _$ClientWantsPlantByIdFromJson(Map<String, dynamic> json) {
  return _ClientWantsPlantById.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsPlantById {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsPlantByIdCopyWith<ClientWantsPlantById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsPlantByIdCopyWith<$Res> {
  factory $ClientWantsPlantByIdCopyWith(ClientWantsPlantById value,
          $Res Function(ClientWantsPlantById) then) =
      _$ClientWantsPlantByIdCopyWithImpl<$Res, ClientWantsPlantById>;
  @useResult
  $Res call({String jwt, String eventType, String plantId});
}

/// @nodoc
class _$ClientWantsPlantByIdCopyWithImpl<$Res,
        $Val extends ClientWantsPlantById>
    implements $ClientWantsPlantByIdCopyWith<$Res> {
  _$ClientWantsPlantByIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? plantId = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsPlantByIdImplCopyWith<$Res>
    implements $ClientWantsPlantByIdCopyWith<$Res> {
  factory _$$ClientWantsPlantByIdImplCopyWith(_$ClientWantsPlantByIdImpl value,
          $Res Function(_$ClientWantsPlantByIdImpl) then) =
      __$$ClientWantsPlantByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType, String plantId});
}

/// @nodoc
class __$$ClientWantsPlantByIdImplCopyWithImpl<$Res>
    extends _$ClientWantsPlantByIdCopyWithImpl<$Res, _$ClientWantsPlantByIdImpl>
    implements _$$ClientWantsPlantByIdImplCopyWith<$Res> {
  __$$ClientWantsPlantByIdImplCopyWithImpl(_$ClientWantsPlantByIdImpl _value,
      $Res Function(_$ClientWantsPlantByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? plantId = null,
  }) {
    return _then(_$ClientWantsPlantByIdImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsPlantByIdImpl implements _ClientWantsPlantById {
  _$ClientWantsPlantByIdImpl(
      {required this.jwt, required this.eventType, required this.plantId});

  factory _$ClientWantsPlantByIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsPlantByIdImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final String plantId;

  @override
  String toString() {
    return 'ClientWantsPlantById(jwt: $jwt, eventType: $eventType, plantId: $plantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsPlantByIdImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.plantId, plantId) || other.plantId == plantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, eventType, plantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsPlantByIdImplCopyWith<_$ClientWantsPlantByIdImpl>
      get copyWith =>
          __$$ClientWantsPlantByIdImplCopyWithImpl<_$ClientWantsPlantByIdImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsPlantByIdImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsPlantById implements ClientWantsPlantById {
  factory _ClientWantsPlantById(
      {required final String jwt,
      required final String eventType,
      required final String plantId}) = _$ClientWantsPlantByIdImpl;

  factory _ClientWantsPlantById.fromJson(Map<String, dynamic> json) =
      _$ClientWantsPlantByIdImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  String get plantId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsPlantByIdImplCopyWith<_$ClientWantsPlantByIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsAllPlantsDto _$ClientWantsAllPlantsDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsAllPlantsDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsAllPlantsDto {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsAllPlantsDtoCopyWith<ClientWantsAllPlantsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsAllPlantsDtoCopyWith<$Res> {
  factory $ClientWantsAllPlantsDtoCopyWith(ClientWantsAllPlantsDto value,
          $Res Function(ClientWantsAllPlantsDto) then) =
      _$ClientWantsAllPlantsDtoCopyWithImpl<$Res, ClientWantsAllPlantsDto>;
  @useResult
  $Res call({String jwt, String eventType, int pageNumber, int pageSize});
}

/// @nodoc
class _$ClientWantsAllPlantsDtoCopyWithImpl<$Res,
        $Val extends ClientWantsAllPlantsDto>
    implements $ClientWantsAllPlantsDtoCopyWith<$Res> {
  _$ClientWantsAllPlantsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsAllPlantsDtoImplCopyWith<$Res>
    implements $ClientWantsAllPlantsDtoCopyWith<$Res> {
  factory _$$ClientWantsAllPlantsDtoImplCopyWith(
          _$ClientWantsAllPlantsDtoImpl value,
          $Res Function(_$ClientWantsAllPlantsDtoImpl) then) =
      __$$ClientWantsAllPlantsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType, int pageNumber, int pageSize});
}

/// @nodoc
class __$$ClientWantsAllPlantsDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsAllPlantsDtoCopyWithImpl<$Res,
        _$ClientWantsAllPlantsDtoImpl>
    implements _$$ClientWantsAllPlantsDtoImplCopyWith<$Res> {
  __$$ClientWantsAllPlantsDtoImplCopyWithImpl(
      _$ClientWantsAllPlantsDtoImpl _value,
      $Res Function(_$ClientWantsAllPlantsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? pageNumber = null,
    Object? pageSize = null,
  }) {
    return _then(_$ClientWantsAllPlantsDtoImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsAllPlantsDtoImpl implements _ClientWantsAllPlantsDto {
  _$ClientWantsAllPlantsDtoImpl(
      {required this.jwt,
      required this.eventType,
      required this.pageNumber,
      required this.pageSize});

  factory _$ClientWantsAllPlantsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsAllPlantsDtoImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final int pageNumber;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'ClientWantsAllPlantsDto(jwt: $jwt, eventType: $eventType, pageNumber: $pageNumber, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsAllPlantsDtoImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jwt, eventType, pageNumber, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsAllPlantsDtoImplCopyWith<_$ClientWantsAllPlantsDtoImpl>
      get copyWith => __$$ClientWantsAllPlantsDtoImplCopyWithImpl<
          _$ClientWantsAllPlantsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsAllPlantsDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsAllPlantsDto implements ClientWantsAllPlantsDto {
  factory _ClientWantsAllPlantsDto(
      {required final String jwt,
      required final String eventType,
      required final int pageNumber,
      required final int pageSize}) = _$ClientWantsAllPlantsDtoImpl;

  factory _ClientWantsAllPlantsDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsAllPlantsDtoImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsAllPlantsDtoImplCopyWith<_$ClientWantsAllPlantsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToDeletePlantDto _$ClientWantsToDeletePlantDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToDeletePlantDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToDeletePlantDto {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToDeletePlantDtoCopyWith<ClientWantsToDeletePlantDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToDeletePlantDtoCopyWith<$Res> {
  factory $ClientWantsToDeletePlantDtoCopyWith(
          ClientWantsToDeletePlantDto value,
          $Res Function(ClientWantsToDeletePlantDto) then) =
      _$ClientWantsToDeletePlantDtoCopyWithImpl<$Res,
          ClientWantsToDeletePlantDto>;
  @useResult
  $Res call({String jwt, String eventType, String plantId});
}

/// @nodoc
class _$ClientWantsToDeletePlantDtoCopyWithImpl<$Res,
        $Val extends ClientWantsToDeletePlantDto>
    implements $ClientWantsToDeletePlantDtoCopyWith<$Res> {
  _$ClientWantsToDeletePlantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? plantId = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToDeletePlantDtoImplCopyWith<$Res>
    implements $ClientWantsToDeletePlantDtoCopyWith<$Res> {
  factory _$$ClientWantsToDeletePlantDtoImplCopyWith(
          _$ClientWantsToDeletePlantDtoImpl value,
          $Res Function(_$ClientWantsToDeletePlantDtoImpl) then) =
      __$$ClientWantsToDeletePlantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType, String plantId});
}

/// @nodoc
class __$$ClientWantsToDeletePlantDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsToDeletePlantDtoCopyWithImpl<$Res,
        _$ClientWantsToDeletePlantDtoImpl>
    implements _$$ClientWantsToDeletePlantDtoImplCopyWith<$Res> {
  __$$ClientWantsToDeletePlantDtoImplCopyWithImpl(
      _$ClientWantsToDeletePlantDtoImpl _value,
      $Res Function(_$ClientWantsToDeletePlantDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? plantId = null,
  }) {
    return _then(_$ClientWantsToDeletePlantDtoImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToDeletePlantDtoImpl
    implements _ClientWantsToDeletePlantDto {
  _$ClientWantsToDeletePlantDtoImpl(
      {required this.jwt, required this.eventType, required this.plantId});

  factory _$ClientWantsToDeletePlantDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToDeletePlantDtoImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final String plantId;

  @override
  String toString() {
    return 'ClientWantsToDeletePlantDto(jwt: $jwt, eventType: $eventType, plantId: $plantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToDeletePlantDtoImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.plantId, plantId) || other.plantId == plantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, eventType, plantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToDeletePlantDtoImplCopyWith<_$ClientWantsToDeletePlantDtoImpl>
      get copyWith => __$$ClientWantsToDeletePlantDtoImplCopyWithImpl<
          _$ClientWantsToDeletePlantDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToDeletePlantDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToDeletePlantDto
    implements ClientWantsToDeletePlantDto {
  factory _ClientWantsToDeletePlantDto(
      {required final String jwt,
      required final String eventType,
      required final String plantId}) = _$ClientWantsToDeletePlantDtoImpl;

  factory _ClientWantsToDeletePlantDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToDeletePlantDtoImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  String get plantId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToDeletePlantDtoImplCopyWith<_$ClientWantsToDeletePlantDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToUpdatePlant _$ClientWantsToUpdatePlantFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToUpdatePlant.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToUpdatePlant {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;
  UpdatePlantDto get updatePlantDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToUpdatePlantCopyWith<ClientWantsToUpdatePlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToUpdatePlantCopyWith<$Res> {
  factory $ClientWantsToUpdatePlantCopyWith(ClientWantsToUpdatePlant value,
          $Res Function(ClientWantsToUpdatePlant) then) =
      _$ClientWantsToUpdatePlantCopyWithImpl<$Res, ClientWantsToUpdatePlant>;
  @useResult
  $Res call(
      {String jwt,
      String eventType,
      String plantId,
      UpdatePlantDto updatePlantDto});

  $UpdatePlantDtoCopyWith<$Res> get updatePlantDto;
}

/// @nodoc
class _$ClientWantsToUpdatePlantCopyWithImpl<$Res,
        $Val extends ClientWantsToUpdatePlant>
    implements $ClientWantsToUpdatePlantCopyWith<$Res> {
  _$ClientWantsToUpdatePlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? plantId = null,
    Object? updatePlantDto = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      updatePlantDto: null == updatePlantDto
          ? _value.updatePlantDto
          : updatePlantDto // ignore: cast_nullable_to_non_nullable
              as UpdatePlantDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdatePlantDtoCopyWith<$Res> get updatePlantDto {
    return $UpdatePlantDtoCopyWith<$Res>(_value.updatePlantDto, (value) {
      return _then(_value.copyWith(updatePlantDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientWantsToUpdatePlantImplCopyWith<$Res>
    implements $ClientWantsToUpdatePlantCopyWith<$Res> {
  factory _$$ClientWantsToUpdatePlantImplCopyWith(
          _$ClientWantsToUpdatePlantImpl value,
          $Res Function(_$ClientWantsToUpdatePlantImpl) then) =
      __$$ClientWantsToUpdatePlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String jwt,
      String eventType,
      String plantId,
      UpdatePlantDto updatePlantDto});

  @override
  $UpdatePlantDtoCopyWith<$Res> get updatePlantDto;
}

/// @nodoc
class __$$ClientWantsToUpdatePlantImplCopyWithImpl<$Res>
    extends _$ClientWantsToUpdatePlantCopyWithImpl<$Res,
        _$ClientWantsToUpdatePlantImpl>
    implements _$$ClientWantsToUpdatePlantImplCopyWith<$Res> {
  __$$ClientWantsToUpdatePlantImplCopyWithImpl(
      _$ClientWantsToUpdatePlantImpl _value,
      $Res Function(_$ClientWantsToUpdatePlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? plantId = null,
    Object? updatePlantDto = null,
  }) {
    return _then(_$ClientWantsToUpdatePlantImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      updatePlantDto: null == updatePlantDto
          ? _value.updatePlantDto
          : updatePlantDto // ignore: cast_nullable_to_non_nullable
              as UpdatePlantDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToUpdatePlantImpl implements _ClientWantsToUpdatePlant {
  _$ClientWantsToUpdatePlantImpl(
      {required this.jwt,
      required this.eventType,
      required this.plantId,
      required this.updatePlantDto});

  factory _$ClientWantsToUpdatePlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToUpdatePlantImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final String plantId;
  @override
  final UpdatePlantDto updatePlantDto;

  @override
  String toString() {
    return 'ClientWantsToUpdatePlant(jwt: $jwt, eventType: $eventType, plantId: $plantId, updatePlantDto: $updatePlantDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToUpdatePlantImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.updatePlantDto, updatePlantDto) ||
                other.updatePlantDto == updatePlantDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jwt, eventType, plantId, updatePlantDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToUpdatePlantImplCopyWith<_$ClientWantsToUpdatePlantImpl>
      get copyWith => __$$ClientWantsToUpdatePlantImplCopyWithImpl<
          _$ClientWantsToUpdatePlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToUpdatePlantImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToUpdatePlant implements ClientWantsToUpdatePlant {
  factory _ClientWantsToUpdatePlant(
          {required final String jwt,
          required final String eventType,
          required final String plantId,
          required final UpdatePlantDto updatePlantDto}) =
      _$ClientWantsToUpdatePlantImpl;

  factory _ClientWantsToUpdatePlant.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToUpdatePlantImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  String get plantId;
  @override
  UpdatePlantDto get updatePlantDto;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToUpdatePlantImplCopyWith<_$ClientWantsToUpdatePlantImpl>
      get copyWith => throw _privateConstructorUsedError;
}
