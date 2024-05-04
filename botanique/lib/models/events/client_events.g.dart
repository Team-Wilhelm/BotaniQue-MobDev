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

_$ClientWantsToLogOutDtoImpl _$$ClientWantsToLogOutDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLogOutDtoImpl(
      email: json['email'] as String,
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsToLogOutDtoImplToJson(
        _$ClientWantsToLogOutDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'eventType': instance.eventType,
    };

_$ClientWantsPlantByIdImpl _$$ClientWantsPlantByIdImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsPlantByIdImpl(
      jwt: json['jwt'] as String,
      eventType: json['eventType'] as String,
      plantId: json['plantId'] as String,
    );

Map<String, dynamic> _$$ClientWantsPlantByIdImplToJson(
        _$ClientWantsPlantByIdImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'plantId': instance.plantId,
    };

_$ClientWantsAllPlantsDtoImpl _$$ClientWantsAllPlantsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsAllPlantsDtoImpl(
      jwt: json['jwt'] as String,
      eventType: json['eventType'] as String,
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$$ClientWantsAllPlantsDtoImplToJson(
        _$ClientWantsAllPlantsDtoImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
    };

_$ClientWantsToDeletePlantDtoImpl _$$ClientWantsToDeletePlantDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToDeletePlantDtoImpl(
      jwt: json['jwt'] as String,
      eventType: json['eventType'] as String,
      plantId: json['plantId'] as String,
    );

Map<String, dynamic> _$$ClientWantsToDeletePlantDtoImplToJson(
        _$ClientWantsToDeletePlantDtoImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'plantId': instance.plantId,
    };

_$ClientWantsToUpdatePlantImpl _$$ClientWantsToUpdatePlantImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToUpdatePlantImpl(
      jwt: json['jwt'] as String,
      eventType: json['eventType'] as String,
      plantId: json['plantId'] as String,
      updatePlantDto: UpdatePlantDto.fromJson(
          json['updatePlantDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientWantsToUpdatePlantImplToJson(
        _$ClientWantsToUpdatePlantImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'plantId': instance.plantId,
      'updatePlantDto': instance.updatePlantDto,
    };
