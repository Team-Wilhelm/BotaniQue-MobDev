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

_$ClientWantsToUpdateProfileImpl _$$ClientWantsToUpdateProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToUpdateProfileImpl(
      jwt: json['jwt'] as String,
      updateUserDto:
          UpdateUserDto.fromJson(json['updateUserDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientWantsToUpdateProfileImplToJson(
        _$ClientWantsToUpdateProfileImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'updateUserDto': instance.updateUserDto,
    };
