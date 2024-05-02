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
