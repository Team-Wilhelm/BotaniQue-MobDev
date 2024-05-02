// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerSendsImageWithoutBackgroundImpl
    _$$ServerSendsImageWithoutBackgroundImplFromJson(
            Map<String, dynamic> json) =>
        _$ServerSendsImageWithoutBackgroundImpl(
          base64Image: json['base64Image'] as String,
        );

Map<String, dynamic> _$$ServerSendsImageWithoutBackgroundImplToJson(
        _$ServerSendsImageWithoutBackgroundImpl instance) =>
    <String, dynamic>{
      'base64Image': instance.base64Image,
    };

_$ServerSendsPlantImpl _$$ServerSendsPlantImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsPlantImpl(
      plant: Plant.fromJson(json['plant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerSendsPlantImplToJson(
        _$ServerSendsPlantImpl instance) =>
    <String, dynamic>{
      'plant': instance.plant,
    };

_$ServerCreatesNewPlantImpl _$$ServerCreatesNewPlantImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerCreatesNewPlantImpl(
      plant: Plant.fromJson(json['plant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerCreatesNewPlantImplToJson(
        _$ServerCreatesNewPlantImpl instance) =>
    <String, dynamic>{
      'plant': instance.plant,
    };

_$ServerSendsErrorMessageImpl _$$ServerSendsErrorMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsErrorMessageImpl(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ServerSendsErrorMessageImplToJson(
        _$ServerSendsErrorMessageImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerAuthenticatesUserImpl _$$ServerAuthenticatesUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAuthenticatesUserImpl(
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$$ServerAuthenticatesUserImplToJson(
        _$ServerAuthenticatesUserImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
    };

_$ServerRejectsWrongCredentialsImpl
    _$$ServerRejectsWrongCredentialsImplFromJson(Map<String, dynamic> json) =>
        _$ServerRejectsWrongCredentialsImpl(
          error: json['error'] as String,
        );

Map<String, dynamic> _$$ServerRejectsWrongCredentialsImplToJson(
        _$ServerRejectsWrongCredentialsImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
