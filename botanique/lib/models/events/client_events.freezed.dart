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

ClientWantsToLogOut _$ClientWantsToLogOutFromJson(Map<String, dynamic> json) {
  return _ClientWantsToLogOutDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogOut {
  String get email => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLogOutCopyWith<ClientWantsToLogOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLogOutCopyWith<$Res> {
  factory $ClientWantsToLogOutCopyWith(
          ClientWantsToLogOut value, $Res Function(ClientWantsToLogOut) then) =
      _$ClientWantsToLogOutCopyWithImpl<$Res, ClientWantsToLogOut>;
  @useResult
  $Res call({String email, String eventType});
}

/// @nodoc
class _$ClientWantsToLogOutCopyWithImpl<$Res, $Val extends ClientWantsToLogOut>
    implements $ClientWantsToLogOutCopyWith<$Res> {
  _$ClientWantsToLogOutCopyWithImpl(this._value, this._then);

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
    implements $ClientWantsToLogOutCopyWith<$Res> {
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
    extends _$ClientWantsToLogOutCopyWithImpl<$Res,
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
    return 'ClientWantsToLogOut(email: $email, eventType: $eventType)';
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

abstract class _ClientWantsToLogOutDto implements ClientWantsToLogOut {
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

ClientWantsAllPlants _$ClientWantsAllPlantsFromJson(Map<String, dynamic> json) {
  return _ClientWantsAllPlantsDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsAllPlants {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsAllPlantsCopyWith<ClientWantsAllPlants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsAllPlantsCopyWith<$Res> {
  factory $ClientWantsAllPlantsCopyWith(ClientWantsAllPlants value,
          $Res Function(ClientWantsAllPlants) then) =
      _$ClientWantsAllPlantsCopyWithImpl<$Res, ClientWantsAllPlants>;
  @useResult
  $Res call({String jwt, String eventType, int pageNumber, int pageSize});
}

/// @nodoc
class _$ClientWantsAllPlantsCopyWithImpl<$Res,
        $Val extends ClientWantsAllPlants>
    implements $ClientWantsAllPlantsCopyWith<$Res> {
  _$ClientWantsAllPlantsCopyWithImpl(this._value, this._then);

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
    implements $ClientWantsAllPlantsCopyWith<$Res> {
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
    extends _$ClientWantsAllPlantsCopyWithImpl<$Res,
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
    return 'ClientWantsAllPlants(jwt: $jwt, eventType: $eventType, pageNumber: $pageNumber, pageSize: $pageSize)';
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

abstract class _ClientWantsAllPlantsDto implements ClientWantsAllPlants {
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

ClientWantsToDeletePlant _$ClientWantsToDeletePlantFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToDeletePlantDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToDeletePlant {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToDeletePlantCopyWith<ClientWantsToDeletePlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToDeletePlantCopyWith<$Res> {
  factory $ClientWantsToDeletePlantCopyWith(ClientWantsToDeletePlant value,
          $Res Function(ClientWantsToDeletePlant) then) =
      _$ClientWantsToDeletePlantCopyWithImpl<$Res, ClientWantsToDeletePlant>;
  @useResult
  $Res call({String jwt, String eventType, String plantId});
}

/// @nodoc
class _$ClientWantsToDeletePlantCopyWithImpl<$Res,
        $Val extends ClientWantsToDeletePlant>
    implements $ClientWantsToDeletePlantCopyWith<$Res> {
  _$ClientWantsToDeletePlantCopyWithImpl(this._value, this._then);

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
    implements $ClientWantsToDeletePlantCopyWith<$Res> {
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
    extends _$ClientWantsToDeletePlantCopyWithImpl<$Res,
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
    return 'ClientWantsToDeletePlant(jwt: $jwt, eventType: $eventType, plantId: $plantId)';
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
    implements ClientWantsToDeletePlant {
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

ClientWantsAllCollections _$ClientWantsAllCollectionsFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsAllCollections.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsAllCollections {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsAllCollectionsCopyWith<ClientWantsAllCollections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsAllCollectionsCopyWith<$Res> {
  factory $ClientWantsAllCollectionsCopyWith(ClientWantsAllCollections value,
          $Res Function(ClientWantsAllCollections) then) =
      _$ClientWantsAllCollectionsCopyWithImpl<$Res, ClientWantsAllCollections>;
  @useResult
  $Res call({String jwt, String eventType});
}

/// @nodoc
class _$ClientWantsAllCollectionsCopyWithImpl<$Res,
        $Val extends ClientWantsAllCollections>
    implements $ClientWantsAllCollectionsCopyWith<$Res> {
  _$ClientWantsAllCollectionsCopyWithImpl(this._value, this._then);

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
abstract class _$$ClientWantsAllCollectionsImplCopyWith<$Res>
    implements $ClientWantsAllCollectionsCopyWith<$Res> {
  factory _$$ClientWantsAllCollectionsImplCopyWith(
          _$ClientWantsAllCollectionsImpl value,
          $Res Function(_$ClientWantsAllCollectionsImpl) then) =
      __$$ClientWantsAllCollectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType});
}

/// @nodoc
class __$$ClientWantsAllCollectionsImplCopyWithImpl<$Res>
    extends _$ClientWantsAllCollectionsCopyWithImpl<$Res,
        _$ClientWantsAllCollectionsImpl>
    implements _$$ClientWantsAllCollectionsImplCopyWith<$Res> {
  __$$ClientWantsAllCollectionsImplCopyWithImpl(
      _$ClientWantsAllCollectionsImpl _value,
      $Res Function(_$ClientWantsAllCollectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsAllCollectionsImpl(
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
class _$ClientWantsAllCollectionsImpl implements _ClientWantsAllCollections {
  const _$ClientWantsAllCollectionsImpl(
      {required this.jwt, required this.eventType});

  factory _$ClientWantsAllCollectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsAllCollectionsImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsAllCollections(jwt: $jwt, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsAllCollectionsImpl &&
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
  _$$ClientWantsAllCollectionsImplCopyWith<_$ClientWantsAllCollectionsImpl>
      get copyWith => __$$ClientWantsAllCollectionsImplCopyWithImpl<
          _$ClientWantsAllCollectionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsAllCollectionsImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsAllCollections implements ClientWantsAllCollections {
  const factory _ClientWantsAllCollections(
      {required final String jwt,
      required final String eventType}) = _$ClientWantsAllCollectionsImpl;

  factory _ClientWantsAllCollections.fromJson(Map<String, dynamic> json) =
      _$ClientWantsAllCollectionsImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsAllCollectionsImplCopyWith<_$ClientWantsAllCollectionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsPlantsForCollection _$ClientWantsPlantsForCollectionFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsPlantsForCollection.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsPlantsForCollection {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsPlantsForCollectionCopyWith<ClientWantsPlantsForCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsPlantsForCollectionCopyWith<$Res> {
  factory $ClientWantsPlantsForCollectionCopyWith(
          ClientWantsPlantsForCollection value,
          $Res Function(ClientWantsPlantsForCollection) then) =
      _$ClientWantsPlantsForCollectionCopyWithImpl<$Res,
          ClientWantsPlantsForCollection>;
  @useResult
  $Res call({String jwt, String eventType, String collectionId});
}

/// @nodoc
class _$ClientWantsPlantsForCollectionCopyWithImpl<$Res,
        $Val extends ClientWantsPlantsForCollection>
    implements $ClientWantsPlantsForCollectionCopyWith<$Res> {
  _$ClientWantsPlantsForCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? collectionId = null,
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
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsPlantsForCollectionImplCopyWith<$Res>
    implements $ClientWantsPlantsForCollectionCopyWith<$Res> {
  factory _$$ClientWantsPlantsForCollectionImplCopyWith(
          _$ClientWantsPlantsForCollectionImpl value,
          $Res Function(_$ClientWantsPlantsForCollectionImpl) then) =
      __$$ClientWantsPlantsForCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType, String collectionId});
}

/// @nodoc
class __$$ClientWantsPlantsForCollectionImplCopyWithImpl<$Res>
    extends _$ClientWantsPlantsForCollectionCopyWithImpl<$Res,
        _$ClientWantsPlantsForCollectionImpl>
    implements _$$ClientWantsPlantsForCollectionImplCopyWith<$Res> {
  __$$ClientWantsPlantsForCollectionImplCopyWithImpl(
      _$ClientWantsPlantsForCollectionImpl _value,
      $Res Function(_$ClientWantsPlantsForCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? collectionId = null,
  }) {
    return _then(_$ClientWantsPlantsForCollectionImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsPlantsForCollectionImpl
    implements _ClientWantsPlantsForCollection {
  const _$ClientWantsPlantsForCollectionImpl(
      {required this.jwt, required this.eventType, required this.collectionId});

  factory _$ClientWantsPlantsForCollectionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsPlantsForCollectionImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final String collectionId;

  @override
  String toString() {
    return 'ClientWantsPlantsForCollection(jwt: $jwt, eventType: $eventType, collectionId: $collectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsPlantsForCollectionImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, eventType, collectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsPlantsForCollectionImplCopyWith<
          _$ClientWantsPlantsForCollectionImpl>
      get copyWith => __$$ClientWantsPlantsForCollectionImplCopyWithImpl<
          _$ClientWantsPlantsForCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsPlantsForCollectionImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsPlantsForCollection
    implements ClientWantsPlantsForCollection {
  const factory _ClientWantsPlantsForCollection(
          {required final String jwt,
          required final String eventType,
          required final String collectionId}) =
      _$ClientWantsPlantsForCollectionImpl;

  factory _ClientWantsPlantsForCollection.fromJson(Map<String, dynamic> json) =
      _$ClientWantsPlantsForCollectionImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  String get collectionId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsPlantsForCollectionImplCopyWith<
          _$ClientWantsPlantsForCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToCreateCollection _$ClientWantsToCreateCollectionFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToCreateCollection.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToCreateCollection {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  CreateCollectionDto get createCollectionDto =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToCreateCollectionCopyWith<ClientWantsToCreateCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToCreateCollectionCopyWith<$Res> {
  factory $ClientWantsToCreateCollectionCopyWith(
          ClientWantsToCreateCollection value,
          $Res Function(ClientWantsToCreateCollection) then) =
      _$ClientWantsToCreateCollectionCopyWithImpl<$Res,
          ClientWantsToCreateCollection>;
  @useResult
  $Res call(
      {String jwt, String eventType, CreateCollectionDto createCollectionDto});

  $CreateCollectionDtoCopyWith<$Res> get createCollectionDto;
}

/// @nodoc
class _$ClientWantsToCreateCollectionCopyWithImpl<$Res,
        $Val extends ClientWantsToCreateCollection>
    implements $ClientWantsToCreateCollectionCopyWith<$Res> {
  _$ClientWantsToCreateCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? createCollectionDto = null,
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
      createCollectionDto: null == createCollectionDto
          ? _value.createCollectionDto
          : createCollectionDto // ignore: cast_nullable_to_non_nullable
              as CreateCollectionDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateCollectionDtoCopyWith<$Res> get createCollectionDto {
    return $CreateCollectionDtoCopyWith<$Res>(_value.createCollectionDto,
        (value) {
      return _then(_value.copyWith(createCollectionDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientWantsToCreateCollectionImplCopyWith<$Res>
    implements $ClientWantsToCreateCollectionCopyWith<$Res> {
  factory _$$ClientWantsToCreateCollectionImplCopyWith(
          _$ClientWantsToCreateCollectionImpl value,
          $Res Function(_$ClientWantsToCreateCollectionImpl) then) =
      __$$ClientWantsToCreateCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String jwt, String eventType, CreateCollectionDto createCollectionDto});

  @override
  $CreateCollectionDtoCopyWith<$Res> get createCollectionDto;
}

/// @nodoc
class __$$ClientWantsToCreateCollectionImplCopyWithImpl<$Res>
    extends _$ClientWantsToCreateCollectionCopyWithImpl<$Res,
        _$ClientWantsToCreateCollectionImpl>
    implements _$$ClientWantsToCreateCollectionImplCopyWith<$Res> {
  __$$ClientWantsToCreateCollectionImplCopyWithImpl(
      _$ClientWantsToCreateCollectionImpl _value,
      $Res Function(_$ClientWantsToCreateCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? createCollectionDto = null,
  }) {
    return _then(_$ClientWantsToCreateCollectionImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      createCollectionDto: null == createCollectionDto
          ? _value.createCollectionDto
          : createCollectionDto // ignore: cast_nullable_to_non_nullable
              as CreateCollectionDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToCreateCollectionImpl
    implements _ClientWantsToCreateCollection {
  const _$ClientWantsToCreateCollectionImpl(
      {required this.jwt,
      required this.eventType,
      required this.createCollectionDto});

  factory _$ClientWantsToCreateCollectionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToCreateCollectionImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final CreateCollectionDto createCollectionDto;

  @override
  String toString() {
    return 'ClientWantsToCreateCollection(jwt: $jwt, eventType: $eventType, createCollectionDto: $createCollectionDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToCreateCollectionImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.createCollectionDto, createCollectionDto) ||
                other.createCollectionDto == createCollectionDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jwt, eventType, createCollectionDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToCreateCollectionImplCopyWith<
          _$ClientWantsToCreateCollectionImpl>
      get copyWith => __$$ClientWantsToCreateCollectionImplCopyWithImpl<
          _$ClientWantsToCreateCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToCreateCollectionImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToCreateCollection
    implements ClientWantsToCreateCollection {
  const factory _ClientWantsToCreateCollection(
          {required final String jwt,
          required final String eventType,
          required final CreateCollectionDto createCollectionDto}) =
      _$ClientWantsToCreateCollectionImpl;

  factory _ClientWantsToCreateCollection.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToCreateCollectionImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  CreateCollectionDto get createCollectionDto;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToCreateCollectionImplCopyWith<
          _$ClientWantsToCreateCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToUpdateCollection _$ClientWantsToUpdateCollectionFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToUpdateCollection.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToUpdateCollection {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  UpdateCollectionDto get updateCollectionDto =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToUpdateCollectionCopyWith<ClientWantsToUpdateCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToUpdateCollectionCopyWith<$Res> {
  factory $ClientWantsToUpdateCollectionCopyWith(
          ClientWantsToUpdateCollection value,
          $Res Function(ClientWantsToUpdateCollection) then) =
      _$ClientWantsToUpdateCollectionCopyWithImpl<$Res,
          ClientWantsToUpdateCollection>;
  @useResult
  $Res call(
      {String jwt, String eventType, UpdateCollectionDto updateCollectionDto});

  $UpdateCollectionDtoCopyWith<$Res> get updateCollectionDto;
}

/// @nodoc
class _$ClientWantsToUpdateCollectionCopyWithImpl<$Res,
        $Val extends ClientWantsToUpdateCollection>
    implements $ClientWantsToUpdateCollectionCopyWith<$Res> {
  _$ClientWantsToUpdateCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? updateCollectionDto = null,
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
      updateCollectionDto: null == updateCollectionDto
          ? _value.updateCollectionDto
          : updateCollectionDto // ignore: cast_nullable_to_non_nullable
              as UpdateCollectionDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateCollectionDtoCopyWith<$Res> get updateCollectionDto {
    return $UpdateCollectionDtoCopyWith<$Res>(_value.updateCollectionDto,
        (value) {
      return _then(_value.copyWith(updateCollectionDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientWantsToUpdateCollectionImplCopyWith<$Res>
    implements $ClientWantsToUpdateCollectionCopyWith<$Res> {
  factory _$$ClientWantsToUpdateCollectionImplCopyWith(
          _$ClientWantsToUpdateCollectionImpl value,
          $Res Function(_$ClientWantsToUpdateCollectionImpl) then) =
      __$$ClientWantsToUpdateCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String jwt, String eventType, UpdateCollectionDto updateCollectionDto});

  @override
  $UpdateCollectionDtoCopyWith<$Res> get updateCollectionDto;
}

/// @nodoc
class __$$ClientWantsToUpdateCollectionImplCopyWithImpl<$Res>
    extends _$ClientWantsToUpdateCollectionCopyWithImpl<$Res,
        _$ClientWantsToUpdateCollectionImpl>
    implements _$$ClientWantsToUpdateCollectionImplCopyWith<$Res> {
  __$$ClientWantsToUpdateCollectionImplCopyWithImpl(
      _$ClientWantsToUpdateCollectionImpl _value,
      $Res Function(_$ClientWantsToUpdateCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? updateCollectionDto = null,
  }) {
    return _then(_$ClientWantsToUpdateCollectionImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      updateCollectionDto: null == updateCollectionDto
          ? _value.updateCollectionDto
          : updateCollectionDto // ignore: cast_nullable_to_non_nullable
              as UpdateCollectionDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToUpdateCollectionImpl
    implements _ClientWantsToUpdateCollection {
  const _$ClientWantsToUpdateCollectionImpl(
      {required this.jwt,
      required this.eventType,
      required this.updateCollectionDto});

  factory _$ClientWantsToUpdateCollectionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToUpdateCollectionImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final UpdateCollectionDto updateCollectionDto;

  @override
  String toString() {
    return 'ClientWantsToUpdateCollection(jwt: $jwt, eventType: $eventType, updateCollectionDto: $updateCollectionDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToUpdateCollectionImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.updateCollectionDto, updateCollectionDto) ||
                other.updateCollectionDto == updateCollectionDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jwt, eventType, updateCollectionDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToUpdateCollectionImplCopyWith<
          _$ClientWantsToUpdateCollectionImpl>
      get copyWith => __$$ClientWantsToUpdateCollectionImplCopyWithImpl<
          _$ClientWantsToUpdateCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToUpdateCollectionImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToUpdateCollection
    implements ClientWantsToUpdateCollection {
  const factory _ClientWantsToUpdateCollection(
          {required final String jwt,
          required final String eventType,
          required final UpdateCollectionDto updateCollectionDto}) =
      _$ClientWantsToUpdateCollectionImpl;

  factory _ClientWantsToUpdateCollection.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToUpdateCollectionImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  UpdateCollectionDto get updateCollectionDto;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToUpdateCollectionImplCopyWith<
          _$ClientWantsToUpdateCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToDeleteCollection _$ClientWantsToDeleteCollectionFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToDeleteCollection.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToDeleteCollection {
  String get jwt => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToDeleteCollectionCopyWith<ClientWantsToDeleteCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToDeleteCollectionCopyWith<$Res> {
  factory $ClientWantsToDeleteCollectionCopyWith(
          ClientWantsToDeleteCollection value,
          $Res Function(ClientWantsToDeleteCollection) then) =
      _$ClientWantsToDeleteCollectionCopyWithImpl<$Res,
          ClientWantsToDeleteCollection>;
  @useResult
  $Res call({String jwt, String eventType, String collectionId});
}

/// @nodoc
class _$ClientWantsToDeleteCollectionCopyWithImpl<$Res,
        $Val extends ClientWantsToDeleteCollection>
    implements $ClientWantsToDeleteCollectionCopyWith<$Res> {
  _$ClientWantsToDeleteCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? collectionId = null,
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
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToDeleteCollectionImplCopyWith<$Res>
    implements $ClientWantsToDeleteCollectionCopyWith<$Res> {
  factory _$$ClientWantsToDeleteCollectionImplCopyWith(
          _$ClientWantsToDeleteCollectionImpl value,
          $Res Function(_$ClientWantsToDeleteCollectionImpl) then) =
      __$$ClientWantsToDeleteCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String eventType, String collectionId});
}

/// @nodoc
class __$$ClientWantsToDeleteCollectionImplCopyWithImpl<$Res>
    extends _$ClientWantsToDeleteCollectionCopyWithImpl<$Res,
        _$ClientWantsToDeleteCollectionImpl>
    implements _$$ClientWantsToDeleteCollectionImplCopyWith<$Res> {
  __$$ClientWantsToDeleteCollectionImplCopyWithImpl(
      _$ClientWantsToDeleteCollectionImpl _value,
      $Res Function(_$ClientWantsToDeleteCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? eventType = null,
    Object? collectionId = null,
  }) {
    return _then(_$ClientWantsToDeleteCollectionImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToDeleteCollectionImpl
    implements _ClientWantsToDeleteCollection {
  const _$ClientWantsToDeleteCollectionImpl(
      {required this.jwt, required this.eventType, required this.collectionId});

  factory _$ClientWantsToDeleteCollectionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToDeleteCollectionImplFromJson(json);

  @override
  final String jwt;
  @override
  final String eventType;
  @override
  final String collectionId;

  @override
  String toString() {
    return 'ClientWantsToDeleteCollection(jwt: $jwt, eventType: $eventType, collectionId: $collectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToDeleteCollectionImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, eventType, collectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToDeleteCollectionImplCopyWith<
          _$ClientWantsToDeleteCollectionImpl>
      get copyWith => __$$ClientWantsToDeleteCollectionImplCopyWithImpl<
          _$ClientWantsToDeleteCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToDeleteCollectionImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToDeleteCollection
    implements ClientWantsToDeleteCollection {
  const factory _ClientWantsToDeleteCollection(
          {required final String jwt,
          required final String eventType,
          required final String collectionId}) =
      _$ClientWantsToDeleteCollectionImpl;

  factory _ClientWantsToDeleteCollection.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToDeleteCollectionImpl.fromJson;

  @override
  String get jwt;
  @override
  String get eventType;
  @override
  String get collectionId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToDeleteCollectionImplCopyWith<
          _$ClientWantsToDeleteCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
