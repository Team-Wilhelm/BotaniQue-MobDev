// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$ClientWantsAllCollectionsImpl _$$ClientWantsAllCollectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsAllCollectionsImpl(
      jwt: json['jwt'] as String,
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsAllCollectionsImplToJson(
        _$ClientWantsAllCollectionsImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
    };

_$ClientWantsPlantsForCollectionImpl
    _$$ClientWantsPlantsForCollectionImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsPlantsForCollectionImpl(
          jwt: json['jwt'] as String,
          eventType: json['eventType'] as String,
          collectionId: json['collectionId'] as String,
        );

Map<String, dynamic> _$$ClientWantsPlantsForCollectionImplToJson(
        _$ClientWantsPlantsForCollectionImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'collectionId': instance.collectionId,
    };

_$ClientWantsToCreateCollectionImpl
    _$$ClientWantsToCreateCollectionImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToCreateCollectionImpl(
          jwt: json['jwt'] as String,
          eventType: json['eventType'] as String,
          createCollectionDto: CreateCollectionDto.fromJson(
              json['createCollectionDto'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ClientWantsToCreateCollectionImplToJson(
        _$ClientWantsToCreateCollectionImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'createCollectionDto': instance.createCollectionDto,
    };

_$ClientWantsToUpdateCollectionImpl
    _$$ClientWantsToUpdateCollectionImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToUpdateCollectionImpl(
          jwt: json['jwt'] as String,
          eventType: json['eventType'] as String,
          updateCollectionDto: UpdateCollectionDto.fromJson(
              json['updateCollectionDto'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ClientWantsToUpdateCollectionImplToJson(
        _$ClientWantsToUpdateCollectionImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'updateCollectionDto': instance.updateCollectionDto,
    };

_$ClientWantsToDeleteCollectionImpl
    _$$ClientWantsToDeleteCollectionImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToDeleteCollectionImpl(
          jwt: json['jwt'] as String,
          eventType: json['eventType'] as String,
          collectionId: json['collectionId'] as String,
        );

Map<String, dynamic> _$$ClientWantsToDeleteCollectionImplToJson(
        _$ClientWantsToDeleteCollectionImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'eventType': instance.eventType,
      'collectionId': instance.collectionId,
    };
