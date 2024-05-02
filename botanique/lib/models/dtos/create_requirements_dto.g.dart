// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_requirements_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRequirementsDtoImpl _$$CreateRequirementsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRequirementsDtoImpl(
      soilMoistureLevel: (json['soilMoistureLevel'] as num).toInt(),
      lightLevel: (json['lightLevel'] as num).toInt(),
      temperatureLevel: (json['temperatureLevel'] as num).toInt(),
      humidityLevel: (json['humidityLevel'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateRequirementsDtoImplToJson(
        _$CreateRequirementsDtoImpl instance) =>
    <String, dynamic>{
      'soilMoistureLevel': instance.soilMoistureLevel,
      'lightLevel': instance.lightLevel,
      'temperatureLevel': instance.temperatureLevel,
      'humidityLevel': instance.humidityLevel,
    };
