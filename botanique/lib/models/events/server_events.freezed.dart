// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerSendsImageWithoutBackground _$ServerSendsImageWithoutBackgroundFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsImageWithoutBackground.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsImageWithoutBackground {
  String get base64Image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsImageWithoutBackgroundCopyWith<ServerSendsImageWithoutBackground>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsImageWithoutBackgroundCopyWith<$Res> {
  factory $ServerSendsImageWithoutBackgroundCopyWith(
          ServerSendsImageWithoutBackground value,
          $Res Function(ServerSendsImageWithoutBackground) then) =
      _$ServerSendsImageWithoutBackgroundCopyWithImpl<$Res,
          ServerSendsImageWithoutBackground>;
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class _$ServerSendsImageWithoutBackgroundCopyWithImpl<$Res,
        $Val extends ServerSendsImageWithoutBackground>
    implements $ServerSendsImageWithoutBackgroundCopyWith<$Res> {
  _$ServerSendsImageWithoutBackgroundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_value.copyWith(
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsImageWithoutBackgroundImplCopyWith<$Res>
    implements $ServerSendsImageWithoutBackgroundCopyWith<$Res> {
  factory _$$ServerSendsImageWithoutBackgroundImplCopyWith(
          _$ServerSendsImageWithoutBackgroundImpl value,
          $Res Function(_$ServerSendsImageWithoutBackgroundImpl) then) =
      __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl<$Res>
    extends _$ServerSendsImageWithoutBackgroundCopyWithImpl<$Res,
        _$ServerSendsImageWithoutBackgroundImpl>
    implements _$$ServerSendsImageWithoutBackgroundImplCopyWith<$Res> {
  __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl(
      _$ServerSendsImageWithoutBackgroundImpl _value,
      $Res Function(_$ServerSendsImageWithoutBackgroundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_$ServerSendsImageWithoutBackgroundImpl(
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsImageWithoutBackgroundImpl
    implements _ServerSendsImageWithoutBackground {
  const _$ServerSendsImageWithoutBackgroundImpl({required this.base64Image});

  factory _$ServerSendsImageWithoutBackgroundImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsImageWithoutBackgroundImplFromJson(json);

  @override
  final String base64Image;

  @override
  String toString() {
    return 'ServerSendsImageWithoutBackground(base64Image: $base64Image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsImageWithoutBackgroundImpl &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsImageWithoutBackgroundImplCopyWith<
          _$ServerSendsImageWithoutBackgroundImpl>
      get copyWith => __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl<
          _$ServerSendsImageWithoutBackgroundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsImageWithoutBackgroundImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsImageWithoutBackground
    implements ServerSendsImageWithoutBackground {
  const factory _ServerSendsImageWithoutBackground(
          {required final String base64Image}) =
      _$ServerSendsImageWithoutBackgroundImpl;

  factory _ServerSendsImageWithoutBackground.fromJson(
          Map<String, dynamic> json) =
      _$ServerSendsImageWithoutBackgroundImpl.fromJson;

  @override
  String get base64Image;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsImageWithoutBackgroundImplCopyWith<
          _$ServerSendsImageWithoutBackgroundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsPlant _$ServerSendsPlantFromJson(Map<String, dynamic> json) {
  return _ServerSendsPlant.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsPlant {
  Plant get plant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsPlantCopyWith<ServerSendsPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsPlantCopyWith<$Res> {
  factory $ServerSendsPlantCopyWith(
          ServerSendsPlant value, $Res Function(ServerSendsPlant) then) =
      _$ServerSendsPlantCopyWithImpl<$Res, ServerSendsPlant>;
  @useResult
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class _$ServerSendsPlantCopyWithImpl<$Res, $Val extends ServerSendsPlant>
    implements $ServerSendsPlantCopyWith<$Res> {
  _$ServerSendsPlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_value.copyWith(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantCopyWith<$Res> get plant {
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerSendsPlantImplCopyWith<$Res>
    implements $ServerSendsPlantCopyWith<$Res> {
  factory _$$ServerSendsPlantImplCopyWith(_$ServerSendsPlantImpl value,
          $Res Function(_$ServerSendsPlantImpl) then) =
      __$$ServerSendsPlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plant plant});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$$ServerSendsPlantImplCopyWithImpl<$Res>
    extends _$ServerSendsPlantCopyWithImpl<$Res, _$ServerSendsPlantImpl>
    implements _$$ServerSendsPlantImplCopyWith<$Res> {
  __$$ServerSendsPlantImplCopyWithImpl(_$ServerSendsPlantImpl _value,
      $Res Function(_$ServerSendsPlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_$ServerSendsPlantImpl(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsPlantImpl implements _ServerSendsPlant {
  const _$ServerSendsPlantImpl({required this.plant});

  factory _$ServerSendsPlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsPlantImplFromJson(json);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'ServerSendsPlant(plant: $plant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsPlantImpl &&
            (identical(other.plant, plant) || other.plant == plant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsPlantImplCopyWith<_$ServerSendsPlantImpl> get copyWith =>
      __$$ServerSendsPlantImplCopyWithImpl<_$ServerSendsPlantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsPlantImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsPlant implements ServerSendsPlant {
  const factory _ServerSendsPlant({required final Plant plant}) =
      _$ServerSendsPlantImpl;

  factory _ServerSendsPlant.fromJson(Map<String, dynamic> json) =
      _$ServerSendsPlantImpl.fromJson;

  @override
  Plant get plant;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsPlantImplCopyWith<_$ServerSendsPlantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerCreatesNewPlant _$ServerCreatesNewPlantFromJson(
    Map<String, dynamic> json) {
  return _ServerCreatesNewPlant.fromJson(json);
}

/// @nodoc
mixin _$ServerCreatesNewPlant {
  Plant get plant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCreatesNewPlantCopyWith<ServerCreatesNewPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCreatesNewPlantCopyWith<$Res> {
  factory $ServerCreatesNewPlantCopyWith(ServerCreatesNewPlant value,
          $Res Function(ServerCreatesNewPlant) then) =
      _$ServerCreatesNewPlantCopyWithImpl<$Res, ServerCreatesNewPlant>;
  @useResult
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class _$ServerCreatesNewPlantCopyWithImpl<$Res,
        $Val extends ServerCreatesNewPlant>
    implements $ServerCreatesNewPlantCopyWith<$Res> {
  _$ServerCreatesNewPlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_value.copyWith(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantCopyWith<$Res> get plant {
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerCreatesNewPlantImplCopyWith<$Res>
    implements $ServerCreatesNewPlantCopyWith<$Res> {
  factory _$$ServerCreatesNewPlantImplCopyWith(
          _$ServerCreatesNewPlantImpl value,
          $Res Function(_$ServerCreatesNewPlantImpl) then) =
      __$$ServerCreatesNewPlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plant plant});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$$ServerCreatesNewPlantImplCopyWithImpl<$Res>
    extends _$ServerCreatesNewPlantCopyWithImpl<$Res,
        _$ServerCreatesNewPlantImpl>
    implements _$$ServerCreatesNewPlantImplCopyWith<$Res> {
  __$$ServerCreatesNewPlantImplCopyWithImpl(_$ServerCreatesNewPlantImpl _value,
      $Res Function(_$ServerCreatesNewPlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_$ServerCreatesNewPlantImpl(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerCreatesNewPlantImpl implements _ServerCreatesNewPlant {
  const _$ServerCreatesNewPlantImpl({required this.plant});

  factory _$ServerCreatesNewPlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerCreatesNewPlantImplFromJson(json);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'ServerCreatesNewPlant(plant: $plant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerCreatesNewPlantImpl &&
            (identical(other.plant, plant) || other.plant == plant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerCreatesNewPlantImplCopyWith<_$ServerCreatesNewPlantImpl>
      get copyWith => __$$ServerCreatesNewPlantImplCopyWithImpl<
          _$ServerCreatesNewPlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerCreatesNewPlantImplToJson(
      this,
    );
  }
}

abstract class _ServerCreatesNewPlant implements ServerCreatesNewPlant {
  const factory _ServerCreatesNewPlant({required final Plant plant}) =
      _$ServerCreatesNewPlantImpl;

  factory _ServerCreatesNewPlant.fromJson(Map<String, dynamic> json) =
      _$ServerCreatesNewPlantImpl.fromJson;

  @override
  Plant get plant;
  @override
  @JsonKey(ignore: true)
  _$$ServerCreatesNewPlantImplCopyWith<_$ServerCreatesNewPlantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerAuthenticatesUser _$ServerAuthenticatesUserFromJson(
    Map<String, dynamic> json) {
  return _ServerAuthenticatesUser.fromJson(json);
}

/// @nodoc
mixin _$ServerAuthenticatesUser {
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAuthenticatesUserCopyWith<ServerAuthenticatesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAuthenticatesUserCopyWith<$Res> {
  factory $ServerAuthenticatesUserCopyWith(ServerAuthenticatesUser value,
          $Res Function(ServerAuthenticatesUser) then) =
      _$ServerAuthenticatesUserCopyWithImpl<$Res, ServerAuthenticatesUser>;
  @useResult
  $Res call({String jwt});
}

/// @nodoc
class _$ServerAuthenticatesUserCopyWithImpl<$Res,
        $Val extends ServerAuthenticatesUser>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  _$ServerAuthenticatesUserCopyWithImpl(this._value, this._then);

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
abstract class _$$ServerAuthenticatesUserImplCopyWith<$Res>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  factory _$$ServerAuthenticatesUserImplCopyWith(
          _$ServerAuthenticatesUserImpl value,
          $Res Function(_$ServerAuthenticatesUserImpl) then) =
      __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt});
}

/// @nodoc
class __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>
    extends _$ServerAuthenticatesUserCopyWithImpl<$Res,
        _$ServerAuthenticatesUserImpl>
    implements _$$ServerAuthenticatesUserImplCopyWith<$Res> {
  __$$ServerAuthenticatesUserImplCopyWithImpl(
      _$ServerAuthenticatesUserImpl _value,
      $Res Function(_$ServerAuthenticatesUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
  }) {
    return _then(_$ServerAuthenticatesUserImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthenticatesUserImpl implements _ServerAuthenticatesUser {
  const _$ServerAuthenticatesUserImpl({required this.jwt});

  factory _$ServerAuthenticatesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthenticatesUserImplFromJson(json);

  @override
  final String jwt;

  @override
  String toString() {
    return 'ServerAuthenticatesUser(jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthenticatesUserImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => __$$ServerAuthenticatesUserImplCopyWithImpl<
          _$ServerAuthenticatesUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthenticatesUserImplToJson(
      this,
    );
  }
}

abstract class _ServerAuthenticatesUser implements ServerAuthenticatesUser {
  const factory _ServerAuthenticatesUser({required final String jwt}) =
      _$ServerAuthenticatesUserImpl;

  factory _ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =
      _$ServerAuthenticatesUserImpl.fromJson;

  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerConfirmsDelete _$ServerConfirmsDeleteFromJson(Map<String, dynamic> json) {
  return _ServerConfirmsDelete.fromJson(json);
}

/// @nodoc
mixin _$ServerConfirmsDelete {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerConfirmsDeleteCopyWith<$Res> {
  factory $ServerConfirmsDeleteCopyWith(ServerConfirmsDelete value,
          $Res Function(ServerConfirmsDelete) then) =
      _$ServerConfirmsDeleteCopyWithImpl<$Res, ServerConfirmsDelete>;
}

/// @nodoc
class _$ServerConfirmsDeleteCopyWithImpl<$Res,
        $Val extends ServerConfirmsDelete>
    implements $ServerConfirmsDeleteCopyWith<$Res> {
  _$ServerConfirmsDeleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerConfirmsDeleteImplCopyWith<$Res> {
  factory _$$ServerConfirmsDeleteImplCopyWith(_$ServerConfirmsDeleteImpl value,
          $Res Function(_$ServerConfirmsDeleteImpl) then) =
      __$$ServerConfirmsDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerConfirmsDeleteImplCopyWithImpl<$Res>
    extends _$ServerConfirmsDeleteCopyWithImpl<$Res, _$ServerConfirmsDeleteImpl>
    implements _$$ServerConfirmsDeleteImplCopyWith<$Res> {
  __$$ServerConfirmsDeleteImplCopyWithImpl(_$ServerConfirmsDeleteImpl _value,
      $Res Function(_$ServerConfirmsDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ServerConfirmsDeleteImpl implements _ServerConfirmsDelete {
  const _$ServerConfirmsDeleteImpl();

  factory _$ServerConfirmsDeleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerConfirmsDeleteImplFromJson(json);

  @override
  String toString() {
    return 'ServerConfirmsDelete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerConfirmsDeleteImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerConfirmsDeleteImplToJson(
      this,
    );
  }
}

abstract class _ServerConfirmsDelete implements ServerConfirmsDelete {
  const factory _ServerConfirmsDelete() = _$ServerConfirmsDeleteImpl;

  factory _ServerConfirmsDelete.fromJson(Map<String, dynamic> json) =
      _$ServerConfirmsDeleteImpl.fromJson;
}

ServerSendsLatestConditionsForPlant
    _$ServerSendsLatestConditionsForPlantFromJson(Map<String, dynamic> json) {
  return _ServerSendsLatestConditionsForPlant.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsLatestConditionsForPlant {
  ConditionsLog get conditionsLog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsLatestConditionsForPlantCopyWith<
          ServerSendsLatestConditionsForPlant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsLatestConditionsForPlantCopyWith<$Res> {
  factory $ServerSendsLatestConditionsForPlantCopyWith(
          ServerSendsLatestConditionsForPlant value,
          $Res Function(ServerSendsLatestConditionsForPlant) then) =
      _$ServerSendsLatestConditionsForPlantCopyWithImpl<$Res,
          ServerSendsLatestConditionsForPlant>;
  @useResult
  $Res call({ConditionsLog conditionsLog});

  $ConditionsLogCopyWith<$Res> get conditionsLog;
}

/// @nodoc
class _$ServerSendsLatestConditionsForPlantCopyWithImpl<$Res,
        $Val extends ServerSendsLatestConditionsForPlant>
    implements $ServerSendsLatestConditionsForPlantCopyWith<$Res> {
  _$ServerSendsLatestConditionsForPlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionsLog = null,
  }) {
    return _then(_value.copyWith(
      conditionsLog: null == conditionsLog
          ? _value.conditionsLog
          : conditionsLog // ignore: cast_nullable_to_non_nullable
              as ConditionsLog,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionsLogCopyWith<$Res> get conditionsLog {
    return $ConditionsLogCopyWith<$Res>(_value.conditionsLog, (value) {
      return _then(_value.copyWith(conditionsLog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerSendsLatestConditionsForPlantImplCopyWith<$Res>
    implements $ServerSendsLatestConditionsForPlantCopyWith<$Res> {
  factory _$$ServerSendsLatestConditionsForPlantImplCopyWith(
          _$ServerSendsLatestConditionsForPlantImpl value,
          $Res Function(_$ServerSendsLatestConditionsForPlantImpl) then) =
      __$$ServerSendsLatestConditionsForPlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConditionsLog conditionsLog});

  @override
  $ConditionsLogCopyWith<$Res> get conditionsLog;
}

/// @nodoc
class __$$ServerSendsLatestConditionsForPlantImplCopyWithImpl<$Res>
    extends _$ServerSendsLatestConditionsForPlantCopyWithImpl<$Res,
        _$ServerSendsLatestConditionsForPlantImpl>
    implements _$$ServerSendsLatestConditionsForPlantImplCopyWith<$Res> {
  __$$ServerSendsLatestConditionsForPlantImplCopyWithImpl(
      _$ServerSendsLatestConditionsForPlantImpl _value,
      $Res Function(_$ServerSendsLatestConditionsForPlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionsLog = null,
  }) {
    return _then(_$ServerSendsLatestConditionsForPlantImpl(
      conditionsLog: null == conditionsLog
          ? _value.conditionsLog
          : conditionsLog // ignore: cast_nullable_to_non_nullable
              as ConditionsLog,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsLatestConditionsForPlantImpl
    implements _ServerSendsLatestConditionsForPlant {
  const _$ServerSendsLatestConditionsForPlantImpl(
      {required this.conditionsLog});

  factory _$ServerSendsLatestConditionsForPlantImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsLatestConditionsForPlantImplFromJson(json);

  @override
  final ConditionsLog conditionsLog;

  @override
  String toString() {
    return 'ServerSendsLatestConditionsForPlant(conditionsLog: $conditionsLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsLatestConditionsForPlantImpl &&
            (identical(other.conditionsLog, conditionsLog) ||
                other.conditionsLog == conditionsLog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conditionsLog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsLatestConditionsForPlantImplCopyWith<
          _$ServerSendsLatestConditionsForPlantImpl>
      get copyWith => __$$ServerSendsLatestConditionsForPlantImplCopyWithImpl<
          _$ServerSendsLatestConditionsForPlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsLatestConditionsForPlantImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsLatestConditionsForPlant
    implements ServerSendsLatestConditionsForPlant {
  const factory _ServerSendsLatestConditionsForPlant(
          {required final ConditionsLog conditionsLog}) =
      _$ServerSendsLatestConditionsForPlantImpl;

  factory _ServerSendsLatestConditionsForPlant.fromJson(
          Map<String, dynamic> json) =
      _$ServerSendsLatestConditionsForPlantImpl.fromJson;

  @override
  ConditionsLog get conditionsLog;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsLatestConditionsForPlantImplCopyWith<
          _$ServerSendsLatestConditionsForPlantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsAllCollections _$ServerSendsAllCollectionsFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsAllCollections.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsAllCollections {
  List<GetCollectionDto> get collections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsAllCollectionsCopyWith<ServerSendsAllCollections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsAllCollectionsCopyWith<$Res> {
  factory $ServerSendsAllCollectionsCopyWith(ServerSendsAllCollections value,
          $Res Function(ServerSendsAllCollections) then) =
      _$ServerSendsAllCollectionsCopyWithImpl<$Res, ServerSendsAllCollections>;
  @useResult
  $Res call({List<GetCollectionDto> collections});
}

/// @nodoc
class _$ServerSendsAllCollectionsCopyWithImpl<$Res,
        $Val extends ServerSendsAllCollections>
    implements $ServerSendsAllCollectionsCopyWith<$Res> {
  _$ServerSendsAllCollectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
  }) {
    return _then(_value.copyWith(
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<GetCollectionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsAllCollectionsImplCopyWith<$Res>
    implements $ServerSendsAllCollectionsCopyWith<$Res> {
  factory _$$ServerSendsAllCollectionsImplCopyWith(
          _$ServerSendsAllCollectionsImpl value,
          $Res Function(_$ServerSendsAllCollectionsImpl) then) =
      __$$ServerSendsAllCollectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetCollectionDto> collections});
}

/// @nodoc
class __$$ServerSendsAllCollectionsImplCopyWithImpl<$Res>
    extends _$ServerSendsAllCollectionsCopyWithImpl<$Res,
        _$ServerSendsAllCollectionsImpl>
    implements _$$ServerSendsAllCollectionsImplCopyWith<$Res> {
  __$$ServerSendsAllCollectionsImplCopyWithImpl(
      _$ServerSendsAllCollectionsImpl _value,
      $Res Function(_$ServerSendsAllCollectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
  }) {
    return _then(_$ServerSendsAllCollectionsImpl(
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<GetCollectionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsAllCollectionsImpl implements _ServerSendsAllCollections {
  const _$ServerSendsAllCollectionsImpl(
      {required final List<GetCollectionDto> collections})
      : _collections = collections;

  factory _$ServerSendsAllCollectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsAllCollectionsImplFromJson(json);

  final List<GetCollectionDto> _collections;
  @override
  List<GetCollectionDto> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  String toString() {
    return 'ServerSendsAllCollections(collections: $collections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsAllCollectionsImpl &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsAllCollectionsImplCopyWith<_$ServerSendsAllCollectionsImpl>
      get copyWith => __$$ServerSendsAllCollectionsImplCopyWithImpl<
          _$ServerSendsAllCollectionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsAllCollectionsImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsAllCollections implements ServerSendsAllCollections {
  const factory _ServerSendsAllCollections(
          {required final List<GetCollectionDto> collections}) =
      _$ServerSendsAllCollectionsImpl;

  factory _ServerSendsAllCollections.fromJson(Map<String, dynamic> json) =
      _$ServerSendsAllCollectionsImpl.fromJson;

  @override
  List<GetCollectionDto> get collections;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsAllCollectionsImplCopyWith<_$ServerSendsAllCollectionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsPlantsForCollection _$ServerSendsPlantsForCollectionFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsPlantsForCollection.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsPlantsForCollection {
  List<Plant> get plants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsPlantsForCollectionCopyWith<ServerSendsPlantsForCollection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsPlantsForCollectionCopyWith<$Res> {
  factory $ServerSendsPlantsForCollectionCopyWith(
          ServerSendsPlantsForCollection value,
          $Res Function(ServerSendsPlantsForCollection) then) =
      _$ServerSendsPlantsForCollectionCopyWithImpl<$Res,
          ServerSendsPlantsForCollection>;
  @useResult
  $Res call({List<Plant> plants});
}

/// @nodoc
class _$ServerSendsPlantsForCollectionCopyWithImpl<$Res,
        $Val extends ServerSendsPlantsForCollection>
    implements $ServerSendsPlantsForCollectionCopyWith<$Res> {
  _$ServerSendsPlantsForCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plants = null,
  }) {
    return _then(_value.copyWith(
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<Plant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsPlantsForCollectionImplCopyWith<$Res>
    implements $ServerSendsPlantsForCollectionCopyWith<$Res> {
  factory _$$ServerSendsPlantsForCollectionImplCopyWith(
          _$ServerSendsPlantsForCollectionImpl value,
          $Res Function(_$ServerSendsPlantsForCollectionImpl) then) =
      __$$ServerSendsPlantsForCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Plant> plants});
}

/// @nodoc
class __$$ServerSendsPlantsForCollectionImplCopyWithImpl<$Res>
    extends _$ServerSendsPlantsForCollectionCopyWithImpl<$Res,
        _$ServerSendsPlantsForCollectionImpl>
    implements _$$ServerSendsPlantsForCollectionImplCopyWith<$Res> {
  __$$ServerSendsPlantsForCollectionImplCopyWithImpl(
      _$ServerSendsPlantsForCollectionImpl _value,
      $Res Function(_$ServerSendsPlantsForCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plants = null,
  }) {
    return _then(_$ServerSendsPlantsForCollectionImpl(
      plants: null == plants
          ? _value._plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<Plant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsPlantsForCollectionImpl
    implements _ServerSendsPlantsForCollection {
  const _$ServerSendsPlantsForCollectionImpl(
      {required final List<Plant> plants})
      : _plants = plants;

  factory _$ServerSendsPlantsForCollectionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsPlantsForCollectionImplFromJson(json);

  final List<Plant> _plants;
  @override
  List<Plant> get plants {
    if (_plants is EqualUnmodifiableListView) return _plants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plants);
  }

  @override
  String toString() {
    return 'ServerSendsPlantsForCollection(plants: $plants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsPlantsForCollectionImpl &&
            const DeepCollectionEquality().equals(other._plants, _plants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsPlantsForCollectionImplCopyWith<
          _$ServerSendsPlantsForCollectionImpl>
      get copyWith => __$$ServerSendsPlantsForCollectionImplCopyWithImpl<
          _$ServerSendsPlantsForCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsPlantsForCollectionImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsPlantsForCollection
    implements ServerSendsPlantsForCollection {
  const factory _ServerSendsPlantsForCollection(
          {required final List<Plant> plants}) =
      _$ServerSendsPlantsForCollectionImpl;

  factory _ServerSendsPlantsForCollection.fromJson(Map<String, dynamic> json) =
      _$ServerSendsPlantsForCollectionImpl.fromJson;

  @override
  List<Plant> get plants;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsPlantsForCollectionImplCopyWith<
          _$ServerSendsPlantsForCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSavesCollection _$ServerSavesCollectionFromJson(
    Map<String, dynamic> json) {
  return _ServerSavesCollection.fromJson(json);
}

/// @nodoc
mixin _$ServerSavesCollection {
  Collection get collection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSavesCollectionCopyWith<ServerSavesCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSavesCollectionCopyWith<$Res> {
  factory $ServerSavesCollectionCopyWith(ServerSavesCollection value,
          $Res Function(ServerSavesCollection) then) =
      _$ServerSavesCollectionCopyWithImpl<$Res, ServerSavesCollection>;
  @useResult
  $Res call({Collection collection});

  $CollectionCopyWith<$Res> get collection;
}

/// @nodoc
class _$ServerSavesCollectionCopyWithImpl<$Res,
        $Val extends ServerSavesCollection>
    implements $ServerSavesCollectionCopyWith<$Res> {
  _$ServerSavesCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res> get collection {
    return $CollectionCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerSavesCollectionImplCopyWith<$Res>
    implements $ServerSavesCollectionCopyWith<$Res> {
  factory _$$ServerSavesCollectionImplCopyWith(
          _$ServerSavesCollectionImpl value,
          $Res Function(_$ServerSavesCollectionImpl) then) =
      __$$ServerSavesCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Collection collection});

  @override
  $CollectionCopyWith<$Res> get collection;
}

/// @nodoc
class __$$ServerSavesCollectionImplCopyWithImpl<$Res>
    extends _$ServerSavesCollectionCopyWithImpl<$Res,
        _$ServerSavesCollectionImpl>
    implements _$$ServerSavesCollectionImplCopyWith<$Res> {
  __$$ServerSavesCollectionImplCopyWithImpl(_$ServerSavesCollectionImpl _value,
      $Res Function(_$ServerSavesCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
  }) {
    return _then(_$ServerSavesCollectionImpl(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSavesCollectionImpl implements _ServerSavesCollection {
  const _$ServerSavesCollectionImpl({required this.collection});

  factory _$ServerSavesCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSavesCollectionImplFromJson(json);

  @override
  final Collection collection;

  @override
  String toString() {
    return 'ServerSavesCollection(collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSavesCollectionImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSavesCollectionImplCopyWith<_$ServerSavesCollectionImpl>
      get copyWith => __$$ServerSavesCollectionImplCopyWithImpl<
          _$ServerSavesCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSavesCollectionImplToJson(
      this,
    );
  }
}

abstract class _ServerSavesCollection implements ServerSavesCollection {
  const factory _ServerSavesCollection({required final Collection collection}) =
      _$ServerSavesCollectionImpl;

  factory _ServerSavesCollection.fromJson(Map<String, dynamic> json) =
      _$ServerSavesCollectionImpl.fromJson;

  @override
  Collection get collection;
  @override
  @JsonKey(ignore: true)
  _$$ServerSavesCollectionImplCopyWith<_$ServerSavesCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerDeletesCollection _$ServerDeletesCollectionFromJson(
    Map<String, dynamic> json) {
  return _ServerDeletesCollection.fromJson(json);
}

/// @nodoc
mixin _$ServerDeletesCollection {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerDeletesCollectionCopyWith<$Res> {
  factory $ServerDeletesCollectionCopyWith(ServerDeletesCollection value,
          $Res Function(ServerDeletesCollection) then) =
      _$ServerDeletesCollectionCopyWithImpl<$Res, ServerDeletesCollection>;
}

/// @nodoc
class _$ServerDeletesCollectionCopyWithImpl<$Res,
        $Val extends ServerDeletesCollection>
    implements $ServerDeletesCollectionCopyWith<$Res> {
  _$ServerDeletesCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerDeletesCollectionImplCopyWith<$Res> {
  factory _$$ServerDeletesCollectionImplCopyWith(
          _$ServerDeletesCollectionImpl value,
          $Res Function(_$ServerDeletesCollectionImpl) then) =
      __$$ServerDeletesCollectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerDeletesCollectionImplCopyWithImpl<$Res>
    extends _$ServerDeletesCollectionCopyWithImpl<$Res,
        _$ServerDeletesCollectionImpl>
    implements _$$ServerDeletesCollectionImplCopyWith<$Res> {
  __$$ServerDeletesCollectionImplCopyWithImpl(
      _$ServerDeletesCollectionImpl _value,
      $Res Function(_$ServerDeletesCollectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ServerDeletesCollectionImpl implements _ServerDeletesCollection {
  const _$ServerDeletesCollectionImpl();

  factory _$ServerDeletesCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerDeletesCollectionImplFromJson(json);

  @override
  String toString() {
    return 'ServerDeletesCollection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerDeletesCollectionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerDeletesCollectionImplToJson(
      this,
    );
  }
}

abstract class _ServerDeletesCollection implements ServerDeletesCollection {
  const factory _ServerDeletesCollection() = _$ServerDeletesCollectionImpl;

  factory _ServerDeletesCollection.fromJson(Map<String, dynamic> json) =
      _$ServerDeletesCollectionImpl.fromJson;
}

ServerSendsErrorMessage _$ServerSendsErrorMessageFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsErrorMessage.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsErrorMessage {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsErrorMessageCopyWith<ServerSendsErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsErrorMessageCopyWith<$Res> {
  factory $ServerSendsErrorMessageCopyWith(ServerSendsErrorMessage value,
          $Res Function(ServerSendsErrorMessage) then) =
      _$ServerSendsErrorMessageCopyWithImpl<$Res, ServerSendsErrorMessage>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerSendsErrorMessageCopyWithImpl<$Res,
        $Val extends ServerSendsErrorMessage>
    implements $ServerSendsErrorMessageCopyWith<$Res> {
  _$ServerSendsErrorMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsErrorMessageImplCopyWith<$Res>
    implements $ServerSendsErrorMessageCopyWith<$Res> {
  factory _$$ServerSendsErrorMessageImplCopyWith(
          _$ServerSendsErrorMessageImpl value,
          $Res Function(_$ServerSendsErrorMessageImpl) then) =
      __$$ServerSendsErrorMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerSendsErrorMessageImplCopyWithImpl<$Res>
    extends _$ServerSendsErrorMessageCopyWithImpl<$Res,
        _$ServerSendsErrorMessageImpl>
    implements _$$ServerSendsErrorMessageImplCopyWith<$Res> {
  __$$ServerSendsErrorMessageImplCopyWithImpl(
      _$ServerSendsErrorMessageImpl _value,
      $Res Function(_$ServerSendsErrorMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerSendsErrorMessageImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsErrorMessageImpl implements _ServerSendsErrorMessage {
  const _$ServerSendsErrorMessageImpl({required this.error});

  factory _$ServerSendsErrorMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsErrorMessageImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerSendsErrorMessage(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsErrorMessageImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsErrorMessageImplCopyWith<_$ServerSendsErrorMessageImpl>
      get copyWith => __$$ServerSendsErrorMessageImplCopyWithImpl<
          _$ServerSendsErrorMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsErrorMessageImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsErrorMessage implements ServerSendsErrorMessage {
  const factory _ServerSendsErrorMessage({required final String error}) =
      _$ServerSendsErrorMessageImpl;

  factory _ServerSendsErrorMessage.fromJson(Map<String, dynamic> json) =
      _$ServerSendsErrorMessageImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsErrorMessageImplCopyWith<_$ServerSendsErrorMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRejectsWrongCredentials _$ServerRejectsWrongCredentialsFromJson(
    Map<String, dynamic> json) {
  return _ServerRejectsWrongCredentials.fromJson(json);
}

/// @nodoc
mixin _$ServerRejectsWrongCredentials {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRejectsWrongCredentialsCopyWith<ServerRejectsWrongCredentials>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRejectsWrongCredentialsCopyWith<$Res> {
  factory $ServerRejectsWrongCredentialsCopyWith(
          ServerRejectsWrongCredentials value,
          $Res Function(ServerRejectsWrongCredentials) then) =
      _$ServerRejectsWrongCredentialsCopyWithImpl<$Res,
          ServerRejectsWrongCredentials>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRejectsWrongCredentialsCopyWithImpl<$Res,
        $Val extends ServerRejectsWrongCredentials>
    implements $ServerRejectsWrongCredentialsCopyWith<$Res> {
  _$ServerRejectsWrongCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRejectsWrongCredentialsImplCopyWith<$Res>
    implements $ServerRejectsWrongCredentialsCopyWith<$Res> {
  factory _$$ServerRejectsWrongCredentialsImplCopyWith(
          _$ServerRejectsWrongCredentialsImpl value,
          $Res Function(_$ServerRejectsWrongCredentialsImpl) then) =
      __$$ServerRejectsWrongCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRejectsWrongCredentialsImplCopyWithImpl<$Res>
    extends _$ServerRejectsWrongCredentialsCopyWithImpl<$Res,
        _$ServerRejectsWrongCredentialsImpl>
    implements _$$ServerRejectsWrongCredentialsImplCopyWith<$Res> {
  __$$ServerRejectsWrongCredentialsImplCopyWithImpl(
      _$ServerRejectsWrongCredentialsImpl _value,
      $Res Function(_$ServerRejectsWrongCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRejectsWrongCredentialsImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRejectsWrongCredentialsImpl
    implements _ServerRejectsWrongCredentials {
  const _$ServerRejectsWrongCredentialsImpl({required this.error});

  factory _$ServerRejectsWrongCredentialsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRejectsWrongCredentialsImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRejectsWrongCredentials(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRejectsWrongCredentialsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRejectsWrongCredentialsImplCopyWith<
          _$ServerRejectsWrongCredentialsImpl>
      get copyWith => __$$ServerRejectsWrongCredentialsImplCopyWithImpl<
          _$ServerRejectsWrongCredentialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRejectsWrongCredentialsImplToJson(
      this,
    );
  }
}

abstract class _ServerRejectsWrongCredentials
    implements ServerRejectsWrongCredentials {
  const factory _ServerRejectsWrongCredentials({required final String error}) =
      _$ServerRejectsWrongCredentialsImpl;

  factory _ServerRejectsWrongCredentials.fromJson(Map<String, dynamic> json) =
      _$ServerRejectsWrongCredentialsImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRejectsWrongCredentialsImplCopyWith<
          _$ServerRejectsWrongCredentialsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRespondsNotAuthenticated _$ServerRespondsNotAuthenticatedFromJson(
    Map<String, dynamic> json) {
  return _ServerRespondsNotAuthenticated.fromJson(json);
}

/// @nodoc
mixin _$ServerRespondsNotAuthenticated {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRespondsNotAuthenticatedCopyWith<ServerRespondsNotAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRespondsNotAuthenticatedCopyWith<$Res> {
  factory $ServerRespondsNotAuthenticatedCopyWith(
          ServerRespondsNotAuthenticated value,
          $Res Function(ServerRespondsNotAuthenticated) then) =
      _$ServerRespondsNotAuthenticatedCopyWithImpl<$Res,
          ServerRespondsNotAuthenticated>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRespondsNotAuthenticatedCopyWithImpl<$Res,
        $Val extends ServerRespondsNotAuthenticated>
    implements $ServerRespondsNotAuthenticatedCopyWith<$Res> {
  _$ServerRespondsNotAuthenticatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRespondsNotAuthenticatedImplCopyWith<$Res>
    implements $ServerRespondsNotAuthenticatedCopyWith<$Res> {
  factory _$$ServerRespondsNotAuthenticatedImplCopyWith(
          _$ServerRespondsNotAuthenticatedImpl value,
          $Res Function(_$ServerRespondsNotAuthenticatedImpl) then) =
      __$$ServerRespondsNotAuthenticatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRespondsNotAuthenticatedImplCopyWithImpl<$Res>
    extends _$ServerRespondsNotAuthenticatedCopyWithImpl<$Res,
        _$ServerRespondsNotAuthenticatedImpl>
    implements _$$ServerRespondsNotAuthenticatedImplCopyWith<$Res> {
  __$$ServerRespondsNotAuthenticatedImplCopyWithImpl(
      _$ServerRespondsNotAuthenticatedImpl _value,
      $Res Function(_$ServerRespondsNotAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRespondsNotAuthenticatedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRespondsNotAuthenticatedImpl
    implements _ServerRespondsNotAuthenticated {
  const _$ServerRespondsNotAuthenticatedImpl({required this.error});

  factory _$ServerRespondsNotAuthenticatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRespondsNotAuthenticatedImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRespondsNotAuthenticated(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRespondsNotAuthenticatedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRespondsNotAuthenticatedImplCopyWith<
          _$ServerRespondsNotAuthenticatedImpl>
      get copyWith => __$$ServerRespondsNotAuthenticatedImplCopyWithImpl<
          _$ServerRespondsNotAuthenticatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRespondsNotAuthenticatedImplToJson(
      this,
    );
  }
}

abstract class _ServerRespondsNotAuthenticated
    implements ServerRespondsNotAuthenticated {
  const factory _ServerRespondsNotAuthenticated({required final String error}) =
      _$ServerRespondsNotAuthenticatedImpl;

  factory _ServerRespondsNotAuthenticated.fromJson(Map<String, dynamic> json) =
      _$ServerRespondsNotAuthenticatedImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRespondsNotAuthenticatedImplCopyWith<
          _$ServerRespondsNotAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRespondsNotAuthorized _$ServerRespondsNotAuthorizedFromJson(
    Map<String, dynamic> json) {
  return _ServerRespondsNotAuthorized.fromJson(json);
}

/// @nodoc
mixin _$ServerRespondsNotAuthorized {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRespondsNotAuthorizedCopyWith<ServerRespondsNotAuthorized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRespondsNotAuthorizedCopyWith<$Res> {
  factory $ServerRespondsNotAuthorizedCopyWith(
          ServerRespondsNotAuthorized value,
          $Res Function(ServerRespondsNotAuthorized) then) =
      _$ServerRespondsNotAuthorizedCopyWithImpl<$Res,
          ServerRespondsNotAuthorized>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRespondsNotAuthorizedCopyWithImpl<$Res,
        $Val extends ServerRespondsNotAuthorized>
    implements $ServerRespondsNotAuthorizedCopyWith<$Res> {
  _$ServerRespondsNotAuthorizedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRespondsNotAuthorizedImplCopyWith<$Res>
    implements $ServerRespondsNotAuthorizedCopyWith<$Res> {
  factory _$$ServerRespondsNotAuthorizedImplCopyWith(
          _$ServerRespondsNotAuthorizedImpl value,
          $Res Function(_$ServerRespondsNotAuthorizedImpl) then) =
      __$$ServerRespondsNotAuthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRespondsNotAuthorizedImplCopyWithImpl<$Res>
    extends _$ServerRespondsNotAuthorizedCopyWithImpl<$Res,
        _$ServerRespondsNotAuthorizedImpl>
    implements _$$ServerRespondsNotAuthorizedImplCopyWith<$Res> {
  __$$ServerRespondsNotAuthorizedImplCopyWithImpl(
      _$ServerRespondsNotAuthorizedImpl _value,
      $Res Function(_$ServerRespondsNotAuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRespondsNotAuthorizedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRespondsNotAuthorizedImpl
    implements _ServerRespondsNotAuthorized {
  const _$ServerRespondsNotAuthorizedImpl({required this.error});

  factory _$ServerRespondsNotAuthorizedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRespondsNotAuthorizedImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRespondsNotAuthorized(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRespondsNotAuthorizedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRespondsNotAuthorizedImplCopyWith<_$ServerRespondsNotAuthorizedImpl>
      get copyWith => __$$ServerRespondsNotAuthorizedImplCopyWithImpl<
          _$ServerRespondsNotAuthorizedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRespondsNotAuthorizedImplToJson(
      this,
    );
  }
}

abstract class _ServerRespondsNotAuthorized
    implements ServerRespondsNotAuthorized {
  const factory _ServerRespondsNotAuthorized({required final String error}) =
      _$ServerRespondsNotAuthorizedImpl;

  factory _ServerRespondsNotAuthorized.fromJson(Map<String, dynamic> json) =
      _$ServerRespondsNotAuthorizedImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRespondsNotAuthorizedImplCopyWith<_$ServerRespondsNotAuthorizedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRespondsNotFound _$ServerRespondsNotFoundFromJson(
    Map<String, dynamic> json) {
  return _ServerRespondsNotFound.fromJson(json);
}

/// @nodoc
mixin _$ServerRespondsNotFound {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRespondsNotFoundCopyWith<ServerRespondsNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRespondsNotFoundCopyWith<$Res> {
  factory $ServerRespondsNotFoundCopyWith(ServerRespondsNotFound value,
          $Res Function(ServerRespondsNotFound) then) =
      _$ServerRespondsNotFoundCopyWithImpl<$Res, ServerRespondsNotFound>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRespondsNotFoundCopyWithImpl<$Res,
        $Val extends ServerRespondsNotFound>
    implements $ServerRespondsNotFoundCopyWith<$Res> {
  _$ServerRespondsNotFoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRespondsNotFoundImplCopyWith<$Res>
    implements $ServerRespondsNotFoundCopyWith<$Res> {
  factory _$$ServerRespondsNotFoundImplCopyWith(
          _$ServerRespondsNotFoundImpl value,
          $Res Function(_$ServerRespondsNotFoundImpl) then) =
      __$$ServerRespondsNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRespondsNotFoundImplCopyWithImpl<$Res>
    extends _$ServerRespondsNotFoundCopyWithImpl<$Res,
        _$ServerRespondsNotFoundImpl>
    implements _$$ServerRespondsNotFoundImplCopyWith<$Res> {
  __$$ServerRespondsNotFoundImplCopyWithImpl(
      _$ServerRespondsNotFoundImpl _value,
      $Res Function(_$ServerRespondsNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRespondsNotFoundImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRespondsNotFoundImpl implements _ServerRespondsNotFound {
  const _$ServerRespondsNotFoundImpl({required this.error});

  factory _$ServerRespondsNotFoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerRespondsNotFoundImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRespondsNotFound(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRespondsNotFoundImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRespondsNotFoundImplCopyWith<_$ServerRespondsNotFoundImpl>
      get copyWith => __$$ServerRespondsNotFoundImplCopyWithImpl<
          _$ServerRespondsNotFoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRespondsNotFoundImplToJson(
      this,
    );
  }
}

abstract class _ServerRespondsNotFound implements ServerRespondsNotFound {
  const factory _ServerRespondsNotFound({required final String error}) =
      _$ServerRespondsNotFoundImpl;

  factory _ServerRespondsNotFound.fromJson(Map<String, dynamic> json) =
      _$ServerRespondsNotFoundImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRespondsNotFoundImplCopyWith<_$ServerRespondsNotFoundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRespondsRegisterDevice _$ServerRespondsRegisterDeviceFromJson(
    Map<String, dynamic> json) {
  return _ServerRespondsRegisterDevice.fromJson(json);
}

/// @nodoc
mixin _$ServerRespondsRegisterDevice {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRespondsRegisterDeviceCopyWith<ServerRespondsRegisterDevice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRespondsRegisterDeviceCopyWith<$Res> {
  factory $ServerRespondsRegisterDeviceCopyWith(
          ServerRespondsRegisterDevice value,
          $Res Function(ServerRespondsRegisterDevice) then) =
      _$ServerRespondsRegisterDeviceCopyWithImpl<$Res,
          ServerRespondsRegisterDevice>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRespondsRegisterDeviceCopyWithImpl<$Res,
        $Val extends ServerRespondsRegisterDevice>
    implements $ServerRespondsRegisterDeviceCopyWith<$Res> {
  _$ServerRespondsRegisterDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRespondsRegisterDeviceImplCopyWith<$Res>
    implements $ServerRespondsRegisterDeviceCopyWith<$Res> {
  factory _$$ServerRespondsRegisterDeviceImplCopyWith(
          _$ServerRespondsRegisterDeviceImpl value,
          $Res Function(_$ServerRespondsRegisterDeviceImpl) then) =
      __$$ServerRespondsRegisterDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRespondsRegisterDeviceImplCopyWithImpl<$Res>
    extends _$ServerRespondsRegisterDeviceCopyWithImpl<$Res,
        _$ServerRespondsRegisterDeviceImpl>
    implements _$$ServerRespondsRegisterDeviceImplCopyWith<$Res> {
  __$$ServerRespondsRegisterDeviceImplCopyWithImpl(
      _$ServerRespondsRegisterDeviceImpl _value,
      $Res Function(_$ServerRespondsRegisterDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRespondsRegisterDeviceImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRespondsRegisterDeviceImpl
    implements _ServerRespondsRegisterDevice {
  const _$ServerRespondsRegisterDeviceImpl({required this.error});

  factory _$ServerRespondsRegisterDeviceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRespondsRegisterDeviceImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRespondsRegisterDevice(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRespondsRegisterDeviceImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRespondsRegisterDeviceImplCopyWith<
          _$ServerRespondsRegisterDeviceImpl>
      get copyWith => __$$ServerRespondsRegisterDeviceImplCopyWithImpl<
          _$ServerRespondsRegisterDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRespondsRegisterDeviceImplToJson(
      this,
    );
  }
}

abstract class _ServerRespondsRegisterDevice
    implements ServerRespondsRegisterDevice {
  const factory _ServerRespondsRegisterDevice({required final String error}) =
      _$ServerRespondsRegisterDeviceImpl;

  factory _ServerRespondsRegisterDevice.fromJson(Map<String, dynamic> json) =
      _$ServerRespondsRegisterDeviceImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRespondsRegisterDeviceImplCopyWith<
          _$ServerRespondsRegisterDeviceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRespondsValidationError _$ServerRespondsValidationErrorFromJson(
    Map<String, dynamic> json) {
  return _ServerRespondsValidationError.fromJson(json);
}

/// @nodoc
mixin _$ServerRespondsValidationError {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRespondsValidationErrorCopyWith<ServerRespondsValidationError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRespondsValidationErrorCopyWith<$Res> {
  factory $ServerRespondsValidationErrorCopyWith(
          ServerRespondsValidationError value,
          $Res Function(ServerRespondsValidationError) then) =
      _$ServerRespondsValidationErrorCopyWithImpl<$Res,
          ServerRespondsValidationError>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRespondsValidationErrorCopyWithImpl<$Res,
        $Val extends ServerRespondsValidationError>
    implements $ServerRespondsValidationErrorCopyWith<$Res> {
  _$ServerRespondsValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRespondsValidationErrorImplCopyWith<$Res>
    implements $ServerRespondsValidationErrorCopyWith<$Res> {
  factory _$$ServerRespondsValidationErrorImplCopyWith(
          _$ServerRespondsValidationErrorImpl value,
          $Res Function(_$ServerRespondsValidationErrorImpl) then) =
      __$$ServerRespondsValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRespondsValidationErrorImplCopyWithImpl<$Res>
    extends _$ServerRespondsValidationErrorCopyWithImpl<$Res,
        _$ServerRespondsValidationErrorImpl>
    implements _$$ServerRespondsValidationErrorImplCopyWith<$Res> {
  __$$ServerRespondsValidationErrorImplCopyWithImpl(
      _$ServerRespondsValidationErrorImpl _value,
      $Res Function(_$ServerRespondsValidationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRespondsValidationErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRespondsValidationErrorImpl
    implements _ServerRespondsValidationError {
  const _$ServerRespondsValidationErrorImpl({required this.error});

  factory _$ServerRespondsValidationErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRespondsValidationErrorImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRespondsValidationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRespondsValidationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRespondsValidationErrorImplCopyWith<
          _$ServerRespondsValidationErrorImpl>
      get copyWith => __$$ServerRespondsValidationErrorImplCopyWithImpl<
          _$ServerRespondsValidationErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRespondsValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _ServerRespondsValidationError
    implements ServerRespondsValidationError {
  const factory _ServerRespondsValidationError({required final String error}) =
      _$ServerRespondsValidationErrorImpl;

  factory _ServerRespondsValidationError.fromJson(Map<String, dynamic> json) =
      _$ServerRespondsValidationErrorImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRespondsValidationErrorImplCopyWith<
          _$ServerRespondsValidationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerRejectsInvalidFile _$ServerRejectsInvalidFileFromJson(
    Map<String, dynamic> json) {
  return _ServerRejectsInvalidFile.fromJson(json);
}

/// @nodoc
mixin _$ServerRejectsInvalidFile {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerRejectsInvalidFileCopyWith<ServerRejectsInvalidFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerRejectsInvalidFileCopyWith<$Res> {
  factory $ServerRejectsInvalidFileCopyWith(ServerRejectsInvalidFile value,
          $Res Function(ServerRejectsInvalidFile) then) =
      _$ServerRejectsInvalidFileCopyWithImpl<$Res, ServerRejectsInvalidFile>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerRejectsInvalidFileCopyWithImpl<$Res,
        $Val extends ServerRejectsInvalidFile>
    implements $ServerRejectsInvalidFileCopyWith<$Res> {
  _$ServerRejectsInvalidFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerRejectsInvalidFileImplCopyWith<$Res>
    implements $ServerRejectsInvalidFileCopyWith<$Res> {
  factory _$$ServerRejectsInvalidFileImplCopyWith(
          _$ServerRejectsInvalidFileImpl value,
          $Res Function(_$ServerRejectsInvalidFileImpl) then) =
      __$$ServerRejectsInvalidFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerRejectsInvalidFileImplCopyWithImpl<$Res>
    extends _$ServerRejectsInvalidFileCopyWithImpl<$Res,
        _$ServerRejectsInvalidFileImpl>
    implements _$$ServerRejectsInvalidFileImplCopyWith<$Res> {
  __$$ServerRejectsInvalidFileImplCopyWithImpl(
      _$ServerRejectsInvalidFileImpl _value,
      $Res Function(_$ServerRejectsInvalidFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerRejectsInvalidFileImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRejectsInvalidFileImpl implements _ServerRejectsInvalidFile {
  const _$ServerRejectsInvalidFileImpl({required this.error});

  factory _$ServerRejectsInvalidFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerRejectsInvalidFileImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerRejectsInvalidFile(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRejectsInvalidFileImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRejectsInvalidFileImplCopyWith<_$ServerRejectsInvalidFileImpl>
      get copyWith => __$$ServerRejectsInvalidFileImplCopyWithImpl<
          _$ServerRejectsInvalidFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRejectsInvalidFileImplToJson(
      this,
    );
  }
}

abstract class _ServerRejectsInvalidFile implements ServerRejectsInvalidFile {
  const factory _ServerRejectsInvalidFile({required final String error}) =
      _$ServerRejectsInvalidFileImpl;

  factory _ServerRejectsInvalidFile.fromJson(Map<String, dynamic> json) =
      _$ServerRejectsInvalidFileImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerRejectsInvalidFileImplCopyWith<_$ServerRejectsInvalidFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
