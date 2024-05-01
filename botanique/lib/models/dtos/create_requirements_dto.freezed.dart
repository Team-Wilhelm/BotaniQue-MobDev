// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_requirements_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
