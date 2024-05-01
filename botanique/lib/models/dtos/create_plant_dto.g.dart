// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_plant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePlantDtoImpl _$$CreatePlantDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreatePlantDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      requirements: CreateRequirementsDto.fromJson(
          json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePlantDtoImplToJson(
        _$CreatePlantDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'requirements': instance.requirements,
    };
