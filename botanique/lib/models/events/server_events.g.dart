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

_$ServerConfirmsUpdateImpl _$$ServerConfirmsUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerConfirmsUpdateImpl(
      getUserDto: json['getUserDto'] == null
          ? null
          : GetUserDto.fromJson(json['getUserDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerConfirmsUpdateImplToJson(
        _$ServerConfirmsUpdateImpl instance) =>
    <String, dynamic>{
      'getUserDto': instance.getUserDto,
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

_$ServerRejectsWrongCredentialsImpl
    _$$ServerRejectsWrongCredentialsImplFromJson(Map<String, dynamic> json) =>
        _$ServerRejectsWrongCredentialsImpl();

Map<String, dynamic> _$$ServerRejectsWrongCredentialsImplToJson(
        _$ServerRejectsWrongCredentialsImpl instance) =>
    <String, dynamic>{};

_$ServerRespondsUserAlreadyExistsImpl
    _$$ServerRespondsUserAlreadyExistsImplFromJson(Map<String, dynamic> json) =>
        _$ServerRespondsUserAlreadyExistsImpl(
          error: json['error'] as String,
        );

Map<String, dynamic> _$$ServerRespondsUserAlreadyExistsImplToJson(
        _$ServerRespondsUserAlreadyExistsImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
