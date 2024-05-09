// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserDtoImpl _$$UpdateUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdateUserDtoImpl(
      username: json['username'] as String?,
      password: json['password'] as String?,
      base64Image: json['base64Image'] as String?,
    );

Map<String, dynamic> _$$UpdateUserDtoImplToJson(_$UpdateUserDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'base64Image': instance.base64Image,
    };

_$GetUserDtoImpl _$$GetUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$GetUserDtoImpl(
      userEmail: json['userEmail'] as String,
      username: json['username'] as String,
      blobUrl: json['blobUrl'] as String?,
    );

Map<String, dynamic> _$$GetUserDtoImplToJson(_$GetUserDtoImpl instance) =>
    <String, dynamic>{
      'userEmail': instance.userEmail,
      'username': instance.username,
      'blobUrl': instance.blobUrl,
    };
