// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      collectionId: json['collectionId'] as String,
      name: json['name'] as String,
      userEmail: json['userEmail'] as String,
      plants: (json['plants'] as List<dynamic>)
          .map((e) => Plant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'name': instance.name,
      'userEmail': instance.userEmail,
      'plants': instance.plants,
    };

_$CreateCollectionDtoImpl _$$CreateCollectionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCollectionDtoImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CreateCollectionDtoImplToJson(
        _$CreateCollectionDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$UpdateCollectionDtoImpl _$$UpdateCollectionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCollectionDtoImpl(
      collectionId: json['collectionId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UpdateCollectionDtoImplToJson(
        _$UpdateCollectionDtoImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'name': instance.name,
    };

_$GetCollectionDtoImpl _$$GetCollectionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCollectionDtoImpl(
      collectionId: json['collectionId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GetCollectionDtoImplToJson(
        _$GetCollectionDtoImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'name': instance.name,
    };
