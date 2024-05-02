// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequirementsImpl _$$RequirementsImplFromJson(Map<String, dynamic> json) =>
    _$RequirementsImpl(
      requirementsId: json['requirementsId'] as String,
      plantId: json['plantId'] as String,
      lightLevel: (json['lightLevel'] as num).toInt(),
      temperatureLevel: (json['temperatureLevel'] as num).toInt(),
      humidityLevel: (json['humidityLevel'] as num).toInt(),
      soilMoistureLevel: (json['soilMoistureLevel'] as num).toInt(),
    );

Map<String, dynamic> _$$RequirementsImplToJson(_$RequirementsImpl instance) =>
    <String, dynamic>{
      'requirementsId': instance.requirementsId,
      'plantId': instance.plantId,
      'lightLevel': instance.lightLevel,
      'temperatureLevel': instance.temperatureLevel,
      'humidityLevel': instance.humidityLevel,
      'soilMoistureLevel': instance.soilMoistureLevel,
    };
