// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_plant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
