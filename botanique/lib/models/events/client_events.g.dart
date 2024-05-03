// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToRemoveBackgroundFromImageImpl
    _$$ClientWantsToRemoveBackgroundFromImageImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToRemoveBackgroundFromImageImpl(
          base64Image: json['base64Image'] as String,
          jwt: json['jwt'] as String,
          eventType: json['eventType'] as String,
        );

Map<String, dynamic> _$$ClientWantsToRemoveBackgroundFromImageImplToJson(
        _$ClientWantsToRemoveBackgroundFromImageImpl instance) =>
    <String, dynamic>{
      'base64Image': instance.base64Image,
      'jwt': instance.jwt,
      'eventType': instance.eventType,
    };

_$ClientWantsToCreatePlantImpl _$$ClientWantsToCreatePlantImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToCreatePlantImpl(
      createPlantDto: CreatePlantDto.fromJson(
          json['createPlantDto'] as Map<String, dynamic>),
      jwt: json['jwt'] as String,
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsToCreatePlantImplToJson(
        _$ClientWantsToCreatePlantImpl instance) =>
    <String, dynamic>{
      'createPlantDto': instance.createPlantDto,
      'jwt': instance.jwt,
      'eventType': instance.eventType,
    };

_$ClientWantsToLogInImpl _$$ClientWantsToLogInImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLogInImpl(
      loginDto: LoginDto.fromJson(json['loginDto'] as Map<String, dynamic>),
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsToLogInImplToJson(
        _$ClientWantsToLogInImpl instance) =>
    <String, dynamic>{
      'loginDto': instance.loginDto,
      'eventType': instance.eventType,
    };

_$ClientWantsToCheckJwtValidityImpl
    _$$ClientWantsToCheckJwtValidityImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToCheckJwtValidityImpl(
          jwt: json['jwt'] as String,
          eventType: json['eventType'] as String,
        );

Map<String, dynamic> _$$ClientWantsToCheckJwtValidityImplToJson(
        _$ClientWantsToCheckJwtValidityImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
    };
