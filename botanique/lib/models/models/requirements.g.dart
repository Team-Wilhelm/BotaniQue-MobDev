// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequirementsImpl _$$RequirementsImplFromJson(Map<String, dynamic> json) =>
    _$RequirementsImpl(
      requirementsId: json['requirementsId'] as String,
      plantId: json['plantId'] as String,
      lightLevel: $enumDecode(_$RequirementLevelEnumMap, json['lightLevel']),
      temperatureLevel:
          $enumDecode(_$RequirementLevelEnumMap, json['temperatureLevel']),
      humidityLevel:
          $enumDecode(_$RequirementLevelEnumMap, json['humidityLevel']),
      soilMoistureLevel:
          $enumDecode(_$RequirementLevelEnumMap, json['soilMoistureLevel']),
    );

Map<String, dynamic> _$$RequirementsImplToJson(_$RequirementsImpl instance) =>
    <String, dynamic>{
      'requirementsId': instance.requirementsId,
      'plantId': instance.plantId,
      'lightLevel': _$RequirementLevelEnumMap[instance.lightLevel]!,
      'temperatureLevel': _$RequirementLevelEnumMap[instance.temperatureLevel]!,
      'humidityLevel': _$RequirementLevelEnumMap[instance.humidityLevel]!,
      'soilMoistureLevel':
          _$RequirementLevelEnumMap[instance.soilMoistureLevel]!,
    };

const _$RequirementLevelEnumMap = {
  RequirementLevel.low: 'low',
  RequirementLevel.medium: 'medium',
  RequirementLevel.high: 'high',
};
