// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionsLogImpl _$$ConditionsLogImplFromJson(Map<String, dynamic> json) =>
    _$ConditionsLogImpl(
      conditionsId: json['conditionsId'] as String,
      plantId: json['plantId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      mood: (json['mood'] as num).toInt(),
      soilMoisture: (json['soilMoisture'] as num).toDouble(),
      light: (json['light'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
    );

Map<String, dynamic> _$$ConditionsLogImplToJson(_$ConditionsLogImpl instance) =>
    <String, dynamic>{
      'conditionsId': instance.conditionsId,
      'plantId': instance.plantId,
      'timestamp': instance.timestamp.toIso8601String(),
      'mood': instance.mood,
      'soilMoisture': instance.soilMoisture,
      'light': instance.light,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
    };
