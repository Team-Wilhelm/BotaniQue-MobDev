// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantImpl _$$PlantImplFromJson(Map<String, dynamic> json) => _$PlantImpl(
      plantId: json['plantId'] as String,
      deviceID: json['deviceID'] as String?,
      userEmail: json['userEmail'] as String,
      collectionId: json['collectionId'] as String?,
      nickname: json['nickname'] as String,
      imageUrl: json['imageUrl'] as String,
      requirements:
          Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlantImplToJson(_$PlantImpl instance) =>
    <String, dynamic>{
      'plantId': instance.plantId,
      'deviceID': instance.deviceID,
      'userEmail': instance.userEmail,
      'collectionId': instance.collectionId,
      'nickname': instance.nickname,
      'imageUrl': instance.imageUrl,
      'requirements': instance.requirements,
    };

_$CreatePlantDtoImpl _$$CreatePlantDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreatePlantDtoImpl(
      userEmail: json['userEmail'] as String,
      collectionId: json['collectionId'] as String?,
      deviceId: json['deviceId'] as String?,
      nickname: json['nickname'] as String,
      base64Image: json['base64Image'] as String?,
      createRequirementsDto: CreateRequirementsDto.fromJson(
          json['createRequirementsDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePlantDtoImplToJson(
        _$CreatePlantDtoImpl instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'collectionId': instance.collectionId,
      'deviceId': instance.deviceId,
      'nickname': instance.nickname,
      'base64Image': instance.base64Image,
      'createRequirementsDto': instance.createRequirementsDto,
    };

_$UpdatePlantDtoImpl _$$UpdatePlantDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdatePlantDtoImpl(
      plantId: json['plantId'] as String,
      cloolectionId: json['cloolectionId'] as String?,
      nickname: json['nickname'] as String?,
      base64Image: json['base64Image'] as String?,
      updateRequirementsDto: UpdateRequirementsDto.fromJson(
          json['updateRequirementsDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatePlantDtoImplToJson(
        _$UpdatePlantDtoImpl instance) =>
    <String, dynamic>{
      'plantId': instance.plantId,
      'cloolectionId': instance.cloolectionId,
      'nickname': instance.nickname,
      'base64Image': instance.base64Image,
      'updateRequirementsDto': instance.updateRequirementsDto,
    };

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

_$UpdateRequirementsDtoImpl _$$UpdateRequirementsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRequirementsDtoImpl(
      soilMoistureLevel: (json['soilMoistureLevel'] as num?)?.toInt(),
      lightLevel: (json['lightLevel'] as num?)?.toInt(),
      temperatureLevel: (json['temperatureLevel'] as num?)?.toInt(),
      humidityLevel: (json['humidityLevel'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateRequirementsDtoImplToJson(
        _$UpdateRequirementsDtoImpl instance) =>
    <String, dynamic>{
      'soilMoistureLevel': instance.soilMoistureLevel,
      'lightLevel': instance.lightLevel,
      'temperatureLevel': instance.temperatureLevel,
      'humidityLevel': instance.humidityLevel,
    };
