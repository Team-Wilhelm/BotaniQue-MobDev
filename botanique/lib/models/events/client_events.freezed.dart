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
