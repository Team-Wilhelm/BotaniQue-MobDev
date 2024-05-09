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

_$ServerSendsAllPlantsImpl _$$ServerSendsAllPlantsImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsAllPlantsImpl(
      plants: (json['plants'] as List<dynamic>)
          .map((e) => Plant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerSendsAllPlantsImplToJson(
        _$ServerSendsAllPlantsImpl instance) =>
    <String, dynamic>{
      'plants': instance.plants,
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

_$ServerConfirmsDeleteImpl _$$ServerConfirmsDeleteImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerConfirmsDeleteImpl();

Map<String, dynamic> _$$ServerConfirmsDeleteImplToJson(
        _$ServerConfirmsDeleteImpl instance) =>
    <String, dynamic>{};

_$ServerSendsAllCollectionsImpl _$$ServerSendsAllCollectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsAllCollectionsImpl(
      collections: (json['collections'] as List<dynamic>)
          .map((e) => GetCollectionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerSendsAllCollectionsImplToJson(
        _$ServerSendsAllCollectionsImpl instance) =>
    <String, dynamic>{
      'collections': instance.collections,
    };

_$ServerSendsPlantsForCollectionImpl
    _$$ServerSendsPlantsForCollectionImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsPlantsForCollectionImpl(
          plants: (json['plants'] as List<dynamic>)
              .map((e) => Plant.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ServerSendsPlantsForCollectionImplToJson(
        _$ServerSendsPlantsForCollectionImpl instance) =>
    <String, dynamic>{
      'plants': instance.plants,
    };

_$ServerSavesCollectionImpl _$$ServerSavesCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSavesCollectionImpl(
      collection:
          Collection.fromJson(json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerSavesCollectionImplToJson(
        _$ServerSavesCollectionImpl instance) =>
    <String, dynamic>{
      'collection': instance.collection,
    };

_$ServerDeletesCollectionImpl _$$ServerDeletesCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerDeletesCollectionImpl();

Map<String, dynamic> _$$ServerDeletesCollectionImplToJson(
        _$ServerDeletesCollectionImpl instance) =>
    <String, dynamic>{};

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
        _$ServerRejectsWrongCredentialsImpl(
          error: json['error'] as String,
        );

Map<String, dynamic> _$$ServerRejectsWrongCredentialsImplToJson(
        _$ServerRejectsWrongCredentialsImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerRespondsNotAuthenticatedImpl
    _$$ServerRespondsNotAuthenticatedImplFromJson(Map<String, dynamic> json) =>
        _$ServerRespondsNotAuthenticatedImpl(
          error: json['error'] as String,
        );

Map<String, dynamic> _$$ServerRespondsNotAuthenticatedImplToJson(
        _$ServerRespondsNotAuthenticatedImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerRespondsNotAuthorizedImpl _$$ServerRespondsNotAuthorizedImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerRespondsNotAuthorizedImpl(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ServerRespondsNotAuthorizedImplToJson(
        _$ServerRespondsNotAuthorizedImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerRespondsNotFoundImpl _$$ServerRespondsNotFoundImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerRespondsNotFoundImpl(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ServerRespondsNotFoundImplToJson(
        _$ServerRespondsNotFoundImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerRespondsRegisterDeviceImpl _$$ServerRespondsRegisterDeviceImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerRespondsRegisterDeviceImpl(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ServerRespondsRegisterDeviceImplToJson(
        _$ServerRespondsRegisterDeviceImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerRespondsValidationErrorImpl
    _$$ServerRespondsValidationErrorImplFromJson(Map<String, dynamic> json) =>
        _$ServerRespondsValidationErrorImpl(
          error: json['error'] as String,
        );

Map<String, dynamic> _$$ServerRespondsValidationErrorImplToJson(
        _$ServerRespondsValidationErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$ServerRejectsInvalidFileImpl _$$ServerRejectsInvalidFileImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerRejectsInvalidFileImpl(
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ServerRejectsInvalidFileImplToJson(
        _$ServerRejectsInvalidFileImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
