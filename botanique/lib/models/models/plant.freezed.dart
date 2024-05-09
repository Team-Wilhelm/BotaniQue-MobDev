// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plant _$PlantFromJson(Map<String, dynamic> json) {
  return _Plant.fromJson(json);
}

/// @nodoc
mixin _$Plant {
  String get plantId => throw _privateConstructorUsedError;
  String? get deviceID => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Requirements get requirements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlantCopyWith<Plant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res, Plant>;
  @useResult
  $Res call(
      {String plantId,
      String? deviceID,
      String userEmail,
      String? collectionId,
      String nickname,
      String imageUrl,
      Requirements requirements});

  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class _$PlantCopyWithImpl<$Res, $Val extends Plant>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? deviceID = freezed,
    Object? userEmail = null,
    Object? collectionId = freezed,
    Object? nickname = null,
    Object? imageUrl = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceID: freezed == deviceID
          ? _value.deviceID
          : deviceID // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequirementsCopyWith<$Res> get requirements {
    return $RequirementsCopyWith<$Res>(_value.requirements, (value) {
      return _then(_value.copyWith(requirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantImplCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$$PlantImplCopyWith(
          _$PlantImpl value, $Res Function(_$PlantImpl) then) =
      __$$PlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String plantId,
      String? deviceID,
      String userEmail,
      String? collectionId,
      String nickname,
      String imageUrl,
      Requirements requirements});

  @override
  $RequirementsCopyWith<$Res> get requirements;
}

/// @nodoc
class __$$PlantImplCopyWithImpl<$Res>
    extends _$PlantCopyWithImpl<$Res, _$PlantImpl>
    implements _$$PlantImplCopyWith<$Res> {
  __$$PlantImplCopyWithImpl(
      _$PlantImpl _value, $Res Function(_$PlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? deviceID = freezed,
    Object? userEmail = null,
    Object? collectionId = freezed,
    Object? nickname = null,
    Object? imageUrl = null,
    Object? requirements = null,
  }) {
    return _then(_$PlantImpl(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceID: freezed == deviceID
          ? _value.deviceID
          : deviceID // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Requirements,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantImpl implements _Plant {
  const _$PlantImpl(
      {required this.plantId,
      required this.deviceID,
      required this.userEmail,
      required this.collectionId,
      required this.nickname,
      required this.imageUrl,
      required this.requirements});

  factory _$PlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImplFromJson(json);

  @override
  final String plantId;
  @override
  final String? deviceID;
  @override
  final String userEmail;
  @override
  final String? collectionId;
  @override
  final String nickname;
  @override
  final String imageUrl;
  @override
  final Requirements requirements;

  @override
  String toString() {
    return 'Plant(plantId: $plantId, deviceID: $deviceID, userEmail: $userEmail, collectionId: $collectionId, nickname: $nickname, imageUrl: $imageUrl, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantImpl &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.deviceID, deviceID) ||
                other.deviceID == deviceID) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plantId, deviceID, userEmail,
      collectionId, nickname, imageUrl, requirements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      __$$PlantImplCopyWithImpl<_$PlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantImplToJson(
      this,
    );
  }
}

abstract class _Plant implements Plant {
  const factory _Plant(
      {required final String plantId,
      required final String? deviceID,
      required final String userEmail,
      required final String? collectionId,
      required final String nickname,
      required final String imageUrl,
      required final Requirements requirements}) = _$PlantImpl;

  factory _Plant.fromJson(Map<String, dynamic> json) = _$PlantImpl.fromJson;

  @override
  String get plantId;
  @override
  String? get deviceID;
  @override
  String get userEmail;
  @override
  String? get collectionId;
  @override
  String get nickname;
  @override
  String get imageUrl;
  @override
  Requirements get requirements;
  @override
  @JsonKey(ignore: true)
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePlantDto _$CreatePlantDtoFromJson(Map<String, dynamic> json) {
  return _CreatePlantDto.fromJson(json);
}

/// @nodoc
mixin _$CreatePlantDto {
  String get userEmail => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get base64Image => throw _privateConstructorUsedError;
  CreateRequirementsDto get createRequirementsDto =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlantDtoCopyWith<CreatePlantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlantDtoCopyWith<$Res> {
  factory $CreatePlantDtoCopyWith(
          CreatePlantDto value, $Res Function(CreatePlantDto) then) =
      _$CreatePlantDtoCopyWithImpl<$Res, CreatePlantDto>;
  @useResult
  $Res call(
      {String userEmail,
      String? collectionId,
      String? deviceId,
      String nickname,
      String? base64Image,
      CreateRequirementsDto createRequirementsDto});

  $CreateRequirementsDtoCopyWith<$Res> get createRequirementsDto;
}

/// @nodoc
class _$CreatePlantDtoCopyWithImpl<$Res, $Val extends CreatePlantDto>
    implements $CreatePlantDtoCopyWith<$Res> {
  _$CreatePlantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? collectionId = freezed,
    Object? deviceId = freezed,
    Object? nickname = null,
    Object? base64Image = freezed,
    Object? createRequirementsDto = null,
  }) {
    return _then(_value.copyWith(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
      createRequirementsDto: null == createRequirementsDto
          ? _value.createRequirementsDto
          : createRequirementsDto // ignore: cast_nullable_to_non_nullable
              as CreateRequirementsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateRequirementsDtoCopyWith<$Res> get createRequirementsDto {
    return $CreateRequirementsDtoCopyWith<$Res>(_value.createRequirementsDto,
        (value) {
      return _then(_value.copyWith(createRequirementsDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatePlantDtoImplCopyWith<$Res>
    implements $CreatePlantDtoCopyWith<$Res> {
  factory _$$CreatePlantDtoImplCopyWith(_$CreatePlantDtoImpl value,
          $Res Function(_$CreatePlantDtoImpl) then) =
      __$$CreatePlantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userEmail,
      String? collectionId,
      String? deviceId,
      String nickname,
      String? base64Image,
      CreateRequirementsDto createRequirementsDto});

  @override
  $CreateRequirementsDtoCopyWith<$Res> get createRequirementsDto;
}

/// @nodoc
class __$$CreatePlantDtoImplCopyWithImpl<$Res>
    extends _$CreatePlantDtoCopyWithImpl<$Res, _$CreatePlantDtoImpl>
    implements _$$CreatePlantDtoImplCopyWith<$Res> {
  __$$CreatePlantDtoImplCopyWithImpl(
      _$CreatePlantDtoImpl _value, $Res Function(_$CreatePlantDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? collectionId = freezed,
    Object? deviceId = freezed,
    Object? nickname = null,
    Object? base64Image = freezed,
    Object? createRequirementsDto = null,
  }) {
    return _then(_$CreatePlantDtoImpl(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
      createRequirementsDto: null == createRequirementsDto
          ? _value.createRequirementsDto
          : createRequirementsDto // ignore: cast_nullable_to_non_nullable
              as CreateRequirementsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlantDtoImpl implements _CreatePlantDto {
  _$CreatePlantDtoImpl(
      {required this.userEmail,
      required this.collectionId,
      required this.deviceId,
      required this.nickname,
      required this.base64Image,
      required this.createRequirementsDto});

  factory _$CreatePlantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlantDtoImplFromJson(json);

  @override
  final String userEmail;
  @override
  final String? collectionId;
  @override
  final String? deviceId;
  @override
  final String nickname;
  @override
  final String? base64Image;
  @override
  final CreateRequirementsDto createRequirementsDto;

  @override
  String toString() {
    return 'CreatePlantDto(userEmail: $userEmail, collectionId: $collectionId, deviceId: $deviceId, nickname: $nickname, base64Image: $base64Image, createRequirementsDto: $createRequirementsDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlantDtoImpl &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.createRequirementsDto, createRequirementsDto) ||
                other.createRequirementsDto == createRequirementsDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEmail, collectionId,
      deviceId, nickname, base64Image, createRequirementsDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlantDtoImplCopyWith<_$CreatePlantDtoImpl> get copyWith =>
      __$$CreatePlantDtoImplCopyWithImpl<_$CreatePlantDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlantDtoImplToJson(
      this,
    );
  }
}

abstract class _CreatePlantDto implements CreatePlantDto {
  factory _CreatePlantDto(
          {required final String userEmail,
          required final String? collectionId,
          required final String? deviceId,
          required final String nickname,
          required final String? base64Image,
          required final CreateRequirementsDto createRequirementsDto}) =
      _$CreatePlantDtoImpl;

  factory _CreatePlantDto.fromJson(Map<String, dynamic> json) =
      _$CreatePlantDtoImpl.fromJson;

  @override
  String get userEmail;
  @override
  String? get collectionId;
  @override
  String? get deviceId;
  @override
  String get nickname;
  @override
  String? get base64Image;
  @override
  CreateRequirementsDto get createRequirementsDto;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlantDtoImplCopyWith<_$CreatePlantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePlantDto _$UpdatePlantDtoFromJson(Map<String, dynamic> json) {
  return _UpdatePlantDto.fromJson(json);
}

/// @nodoc
mixin _$UpdatePlantDto {
  String get plantId => throw _privateConstructorUsedError;
  String? get cloolectionId => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get base64Image =>
      throw _privateConstructorUsedError; // leave empty to keep existing image
  UpdateRequirementsDto get updateRequirementsDto =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePlantDtoCopyWith<UpdatePlantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePlantDtoCopyWith<$Res> {
  factory $UpdatePlantDtoCopyWith(
          UpdatePlantDto value, $Res Function(UpdatePlantDto) then) =
      _$UpdatePlantDtoCopyWithImpl<$Res, UpdatePlantDto>;
  @useResult
  $Res call(
      {String plantId,
      String? cloolectionId,
      String? nickname,
      String? base64Image,
      UpdateRequirementsDto updateRequirementsDto});

  $UpdateRequirementsDtoCopyWith<$Res> get updateRequirementsDto;
}

/// @nodoc
class _$UpdatePlantDtoCopyWithImpl<$Res, $Val extends UpdatePlantDto>
    implements $UpdatePlantDtoCopyWith<$Res> {
  _$UpdatePlantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? cloolectionId = freezed,
    Object? nickname = freezed,
    Object? base64Image = freezed,
    Object? updateRequirementsDto = null,
  }) {
    return _then(_value.copyWith(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      cloolectionId: freezed == cloolectionId
          ? _value.cloolectionId
          : cloolectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
      updateRequirementsDto: null == updateRequirementsDto
          ? _value.updateRequirementsDto
          : updateRequirementsDto // ignore: cast_nullable_to_non_nullable
              as UpdateRequirementsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateRequirementsDtoCopyWith<$Res> get updateRequirementsDto {
    return $UpdateRequirementsDtoCopyWith<$Res>(_value.updateRequirementsDto,
        (value) {
      return _then(_value.copyWith(updateRequirementsDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePlantDtoImplCopyWith<$Res>
    implements $UpdatePlantDtoCopyWith<$Res> {
  factory _$$UpdatePlantDtoImplCopyWith(_$UpdatePlantDtoImpl value,
          $Res Function(_$UpdatePlantDtoImpl) then) =
      __$$UpdatePlantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String plantId,
      String? cloolectionId,
      String? nickname,
      String? base64Image,
      UpdateRequirementsDto updateRequirementsDto});

  @override
  $UpdateRequirementsDtoCopyWith<$Res> get updateRequirementsDto;
}

/// @nodoc
class __$$UpdatePlantDtoImplCopyWithImpl<$Res>
    extends _$UpdatePlantDtoCopyWithImpl<$Res, _$UpdatePlantDtoImpl>
    implements _$$UpdatePlantDtoImplCopyWith<$Res> {
  __$$UpdatePlantDtoImplCopyWithImpl(
      _$UpdatePlantDtoImpl _value, $Res Function(_$UpdatePlantDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? cloolectionId = freezed,
    Object? nickname = freezed,
    Object? base64Image = freezed,
    Object? updateRequirementsDto = null,
  }) {
    return _then(_$UpdatePlantDtoImpl(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      cloolectionId: freezed == cloolectionId
          ? _value.cloolectionId
          : cloolectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
      updateRequirementsDto: null == updateRequirementsDto
          ? _value.updateRequirementsDto
          : updateRequirementsDto // ignore: cast_nullable_to_non_nullable
              as UpdateRequirementsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePlantDtoImpl implements _UpdatePlantDto {
  _$UpdatePlantDtoImpl(
      {required this.plantId,
      required this.cloolectionId,
      required this.nickname,
      required this.base64Image,
      required this.updateRequirementsDto});

  factory _$UpdatePlantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePlantDtoImplFromJson(json);

  @override
  final String plantId;
  @override
  final String? cloolectionId;
  @override
  final String? nickname;
  @override
  final String? base64Image;
// leave empty to keep existing image
  @override
  final UpdateRequirementsDto updateRequirementsDto;

  @override
  String toString() {
    return 'UpdatePlantDto(plantId: $plantId, cloolectionId: $cloolectionId, nickname: $nickname, base64Image: $base64Image, updateRequirementsDto: $updateRequirementsDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlantDtoImpl &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.cloolectionId, cloolectionId) ||
                other.cloolectionId == cloolectionId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.updateRequirementsDto, updateRequirementsDto) ||
                other.updateRequirementsDto == updateRequirementsDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plantId, cloolectionId, nickname,
      base64Image, updateRequirementsDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlantDtoImplCopyWith<_$UpdatePlantDtoImpl> get copyWith =>
      __$$UpdatePlantDtoImplCopyWithImpl<_$UpdatePlantDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePlantDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdatePlantDto implements UpdatePlantDto {
  factory _UpdatePlantDto(
          {required final String plantId,
          required final String? cloolectionId,
          required final String? nickname,
          required final String? base64Image,
          required final UpdateRequirementsDto updateRequirementsDto}) =
      _$UpdatePlantDtoImpl;

  factory _UpdatePlantDto.fromJson(Map<String, dynamic> json) =
      _$UpdatePlantDtoImpl.fromJson;

  @override
  String get plantId;
  @override
  String? get cloolectionId;
  @override
  String? get nickname;
  @override
  String? get base64Image;
  @override // leave empty to keep existing image
  UpdateRequirementsDto get updateRequirementsDto;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePlantDtoImplCopyWith<_$UpdatePlantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateRequirementsDto _$CreateRequirementsDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateRequirementsDto.fromJson(json);
}

/// @nodoc
mixin _$CreateRequirementsDto {
  int get soilMoistureLevel => throw _privateConstructorUsedError;
  int get lightLevel => throw _privateConstructorUsedError;
  int get temperatureLevel => throw _privateConstructorUsedError;
  int get humidityLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRequirementsDtoCopyWith<CreateRequirementsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequirementsDtoCopyWith<$Res> {
  factory $CreateRequirementsDtoCopyWith(CreateRequirementsDto value,
          $Res Function(CreateRequirementsDto) then) =
      _$CreateRequirementsDtoCopyWithImpl<$Res, CreateRequirementsDto>;
  @useResult
  $Res call(
      {int soilMoistureLevel,
      int lightLevel,
      int temperatureLevel,
      int humidityLevel});
}

/// @nodoc
class _$CreateRequirementsDtoCopyWithImpl<$Res,
        $Val extends CreateRequirementsDto>
    implements $CreateRequirementsDtoCopyWith<$Res> {
  _$CreateRequirementsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soilMoistureLevel = null,
    Object? lightLevel = null,
    Object? temperatureLevel = null,
    Object? humidityLevel = null,
  }) {
    return _then(_value.copyWith(
      soilMoistureLevel: null == soilMoistureLevel
          ? _value.soilMoistureLevel
          : soilMoistureLevel // ignore: cast_nullable_to_non_nullable
              as int,
      lightLevel: null == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int,
      temperatureLevel: null == temperatureLevel
          ? _value.temperatureLevel
          : temperatureLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidityLevel: null == humidityLevel
          ? _value.humidityLevel
          : humidityLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRequirementsDtoImplCopyWith<$Res>
    implements $CreateRequirementsDtoCopyWith<$Res> {
  factory _$$CreateRequirementsDtoImplCopyWith(
          _$CreateRequirementsDtoImpl value,
          $Res Function(_$CreateRequirementsDtoImpl) then) =
      __$$CreateRequirementsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int soilMoistureLevel,
      int lightLevel,
      int temperatureLevel,
      int humidityLevel});
}

/// @nodoc
class __$$CreateRequirementsDtoImplCopyWithImpl<$Res>
    extends _$CreateRequirementsDtoCopyWithImpl<$Res,
        _$CreateRequirementsDtoImpl>
    implements _$$CreateRequirementsDtoImplCopyWith<$Res> {
  __$$CreateRequirementsDtoImplCopyWithImpl(_$CreateRequirementsDtoImpl _value,
      $Res Function(_$CreateRequirementsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soilMoistureLevel = null,
    Object? lightLevel = null,
    Object? temperatureLevel = null,
    Object? humidityLevel = null,
  }) {
    return _then(_$CreateRequirementsDtoImpl(
      soilMoistureLevel: null == soilMoistureLevel
          ? _value.soilMoistureLevel
          : soilMoistureLevel // ignore: cast_nullable_to_non_nullable
              as int,
      lightLevel: null == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int,
      temperatureLevel: null == temperatureLevel
          ? _value.temperatureLevel
          : temperatureLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidityLevel: null == humidityLevel
          ? _value.humidityLevel
          : humidityLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRequirementsDtoImpl implements _CreateRequirementsDto {
  _$CreateRequirementsDtoImpl(
      {required this.soilMoistureLevel,
      required this.lightLevel,
      required this.temperatureLevel,
      required this.humidityLevel});

  factory _$CreateRequirementsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRequirementsDtoImplFromJson(json);

  @override
  final int soilMoistureLevel;
  @override
  final int lightLevel;
  @override
  final int temperatureLevel;
  @override
  final int humidityLevel;

  @override
  String toString() {
    return 'CreateRequirementsDto(soilMoistureLevel: $soilMoistureLevel, lightLevel: $lightLevel, temperatureLevel: $temperatureLevel, humidityLevel: $humidityLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequirementsDtoImpl &&
            (identical(other.soilMoistureLevel, soilMoistureLevel) ||
                other.soilMoistureLevel == soilMoistureLevel) &&
            (identical(other.lightLevel, lightLevel) ||
                other.lightLevel == lightLevel) &&
            (identical(other.temperatureLevel, temperatureLevel) ||
                other.temperatureLevel == temperatureLevel) &&
            (identical(other.humidityLevel, humidityLevel) ||
                other.humidityLevel == humidityLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, soilMoistureLevel, lightLevel,
      temperatureLevel, humidityLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRequirementsDtoImplCopyWith<_$CreateRequirementsDtoImpl>
      get copyWith => __$$CreateRequirementsDtoImplCopyWithImpl<
          _$CreateRequirementsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRequirementsDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateRequirementsDto implements CreateRequirementsDto {
  factory _CreateRequirementsDto(
      {required final int soilMoistureLevel,
      required final int lightLevel,
      required final int temperatureLevel,
      required final int humidityLevel}) = _$CreateRequirementsDtoImpl;

  factory _CreateRequirementsDto.fromJson(Map<String, dynamic> json) =
      _$CreateRequirementsDtoImpl.fromJson;

  @override
  int get soilMoistureLevel;
  @override
  int get lightLevel;
  @override
  int get temperatureLevel;
  @override
  int get humidityLevel;
  @override
  @JsonKey(ignore: true)
  _$$CreateRequirementsDtoImplCopyWith<_$CreateRequirementsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateRequirementsDto _$UpdateRequirementsDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateRequirementsDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateRequirementsDto {
  int? get soilMoistureLevel => throw _privateConstructorUsedError;
  int? get lightLevel => throw _privateConstructorUsedError;
  int? get temperatureLevel => throw _privateConstructorUsedError;
  int? get humidityLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRequirementsDtoCopyWith<UpdateRequirementsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRequirementsDtoCopyWith<$Res> {
  factory $UpdateRequirementsDtoCopyWith(UpdateRequirementsDto value,
          $Res Function(UpdateRequirementsDto) then) =
      _$UpdateRequirementsDtoCopyWithImpl<$Res, UpdateRequirementsDto>;
  @useResult
  $Res call(
      {int? soilMoistureLevel,
      int? lightLevel,
      int? temperatureLevel,
      int? humidityLevel});
}

/// @nodoc
class _$UpdateRequirementsDtoCopyWithImpl<$Res,
        $Val extends UpdateRequirementsDto>
    implements $UpdateRequirementsDtoCopyWith<$Res> {
  _$UpdateRequirementsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soilMoistureLevel = freezed,
    Object? lightLevel = freezed,
    Object? temperatureLevel = freezed,
    Object? humidityLevel = freezed,
  }) {
    return _then(_value.copyWith(
      soilMoistureLevel: freezed == soilMoistureLevel
          ? _value.soilMoistureLevel
          : soilMoistureLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      lightLevel: freezed == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureLevel: freezed == temperatureLevel
          ? _value.temperatureLevel
          : temperatureLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      humidityLevel: freezed == humidityLevel
          ? _value.humidityLevel
          : humidityLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRequirementsDtoImplCopyWith<$Res>
    implements $UpdateRequirementsDtoCopyWith<$Res> {
  factory _$$UpdateRequirementsDtoImplCopyWith(
          _$UpdateRequirementsDtoImpl value,
          $Res Function(_$UpdateRequirementsDtoImpl) then) =
      __$$UpdateRequirementsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? soilMoistureLevel,
      int? lightLevel,
      int? temperatureLevel,
      int? humidityLevel});
}

/// @nodoc
class __$$UpdateRequirementsDtoImplCopyWithImpl<$Res>
    extends _$UpdateRequirementsDtoCopyWithImpl<$Res,
        _$UpdateRequirementsDtoImpl>
    implements _$$UpdateRequirementsDtoImplCopyWith<$Res> {
  __$$UpdateRequirementsDtoImplCopyWithImpl(_$UpdateRequirementsDtoImpl _value,
      $Res Function(_$UpdateRequirementsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soilMoistureLevel = freezed,
    Object? lightLevel = freezed,
    Object? temperatureLevel = freezed,
    Object? humidityLevel = freezed,
  }) {
    return _then(_$UpdateRequirementsDtoImpl(
      soilMoistureLevel: freezed == soilMoistureLevel
          ? _value.soilMoistureLevel
          : soilMoistureLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      lightLevel: freezed == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureLevel: freezed == temperatureLevel
          ? _value.temperatureLevel
          : temperatureLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      humidityLevel: freezed == humidityLevel
          ? _value.humidityLevel
          : humidityLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateRequirementsDtoImpl implements _UpdateRequirementsDto {
  _$UpdateRequirementsDtoImpl(
      {required this.soilMoistureLevel,
      required this.lightLevel,
      required this.temperatureLevel,
      required this.humidityLevel});

  factory _$UpdateRequirementsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRequirementsDtoImplFromJson(json);

  @override
  final int? soilMoistureLevel;
  @override
  final int? lightLevel;
  @override
  final int? temperatureLevel;
  @override
  final int? humidityLevel;

  @override
  String toString() {
    return 'UpdateRequirementsDto(soilMoistureLevel: $soilMoistureLevel, lightLevel: $lightLevel, temperatureLevel: $temperatureLevel, humidityLevel: $humidityLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequirementsDtoImpl &&
            (identical(other.soilMoistureLevel, soilMoistureLevel) ||
                other.soilMoistureLevel == soilMoistureLevel) &&
            (identical(other.lightLevel, lightLevel) ||
                other.lightLevel == lightLevel) &&
            (identical(other.temperatureLevel, temperatureLevel) ||
                other.temperatureLevel == temperatureLevel) &&
            (identical(other.humidityLevel, humidityLevel) ||
                other.humidityLevel == humidityLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, soilMoistureLevel, lightLevel,
      temperatureLevel, humidityLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequirementsDtoImplCopyWith<_$UpdateRequirementsDtoImpl>
      get copyWith => __$$UpdateRequirementsDtoImplCopyWithImpl<
          _$UpdateRequirementsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRequirementsDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateRequirementsDto implements UpdateRequirementsDto {
  factory _UpdateRequirementsDto(
      {required final int? soilMoistureLevel,
      required final int? lightLevel,
      required final int? temperatureLevel,
      required final int? humidityLevel}) = _$UpdateRequirementsDtoImpl;

  factory _UpdateRequirementsDto.fromJson(Map<String, dynamic> json) =
      _$UpdateRequirementsDtoImpl.fromJson;

  @override
  int? get soilMoistureLevel;
  @override
  int? get lightLevel;
  @override
  int? get temperatureLevel;
  @override
  int? get humidityLevel;
  @override
  @JsonKey(ignore: true)
  _$$UpdateRequirementsDtoImplCopyWith<_$UpdateRequirementsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
