// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_plant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
