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
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  CreateRequirementsDto get requirements => throw _privateConstructorUsedError;

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
      {String name,
      String description,
      String imageUrl,
      CreateRequirementsDto requirements});

  $CreateRequirementsDtoCopyWith<$Res> get requirements;
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
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as CreateRequirementsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateRequirementsDtoCopyWith<$Res> get requirements {
    return $CreateRequirementsDtoCopyWith<$Res>(_value.requirements, (value) {
      return _then(_value.copyWith(requirements: value) as $Val);
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
      {String name,
      String description,
      String imageUrl,
      CreateRequirementsDto requirements});

  @override
  $CreateRequirementsDtoCopyWith<$Res> get requirements;
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
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? requirements = null,
  }) {
    return _then(_$CreatePlantDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as CreateRequirementsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlantDtoImpl implements _CreatePlantDto {
  _$CreatePlantDtoImpl(
      {required this.name,
      required this.description,
      required this.imageUrl,
      required this.requirements});

  factory _$CreatePlantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlantDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final CreateRequirementsDto requirements;

  @override
  String toString() {
    return 'CreatePlantDto(name: $name, description: $description, imageUrl: $imageUrl, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlantDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, imageUrl, requirements);

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
          {required final String name,
          required final String description,
          required final String imageUrl,
          required final CreateRequirementsDto requirements}) =
      _$CreatePlantDtoImpl;

  factory _CreatePlantDto.fromJson(Map<String, dynamic> json) =
      _$CreatePlantDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  CreateRequirementsDto get requirements;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlantDtoImplCopyWith<_$CreatePlantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
