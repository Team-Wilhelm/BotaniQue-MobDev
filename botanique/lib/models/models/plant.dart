import 'package:dart_mappable/dart_mappable.dart';

import 'conditions.dart';
import 'uuid.dart';

part 'plant.mapper.dart';

@MappableClass()
class Plant with PlantMappable {
  final Uuid plantId;
  final String? deviceID;
  final String userEmail;
  final Uuid? collectionId;
  final String nickname;
  final String imageUrl;
  final Requirements requirements;
  final List<ConditionsLog> conditionsLogs; 
  final DateTime latestChange;

  const Plant({
    required this.plantId,
    this.deviceID,
    required this.userEmail,
    this.collectionId,
    required this.nickname,
    required this.imageUrl,
    required this.requirements,
    required this.conditionsLogs,
    required this.latestChange,
  });
}

@MappableClass()
class CreatePlantDto with CreatePlantDtoMappable {
  final Uuid? collectionId;
  final String? deviceId;
  final String nickname;
  final String? base64Image;
  final CreateRequirementsDto createRequirementsDto;

  CreatePlantDto({
    required this.collectionId,
    required this.deviceId,
    required this.nickname,
    required this.base64Image,
    required this.createRequirementsDto,
  });
}

@MappableClass()
class UpdatePlantDto with UpdatePlantDtoMappable {
  final Uuid plantId;
  final Uuid? collectionId;
  final String? deviceId;
  final String nickname;
  final String? base64Image;
  final UpdateRequirementsDto updateRequirementsDto;

  UpdatePlantDto({
    required this.plantId,
    this.collectionId,
    this.deviceId,
    required this.nickname,
    required this.base64Image,
    required this.updateRequirementsDto,
  });
}

@MappableClass()
class GetCriticalPlantDto with GetCriticalPlantDtoMappable {
  final Uuid plantId;
  final String imageUrl;
  final String nickname;
  final int mood;
  final String suggestedAction;

  GetCriticalPlantDto({
    required this.plantId,
    required this.imageUrl,
    required this.nickname,
    required this.mood,
    required this.suggestedAction,
  });
}

/*
  * Requirements
*/
@MappableClass()
class Requirements with RequirementsMappable {
  final Uuid requirementsId;
  final Uuid plantId;
  final int lightLevel;
  final double temperatureLevel;
  final int humidityLevel;
  final int soilMoistureLevel;

  Requirements({
    required this.requirementsId,
    required this.plantId,
    required this.lightLevel,
    required this.temperatureLevel,
    required this.humidityLevel,
    required this.soilMoistureLevel,
  });
}

@MappableClass()
class CreateRequirementsDto with CreateRequirementsDtoMappable {
  final int soilMoistureLevel;
  final int lightLevel;
  final double temperatureLevel;
  final int humidityLevel;

  CreateRequirementsDto({
    required this.soilMoistureLevel,
    required this.lightLevel,
    required this.temperatureLevel,
    required this.humidityLevel,
  });

  factory CreateRequirementsDto.empty() => CreateRequirementsDto(
        soilMoistureLevel: 0,
        lightLevel: 0,
        temperatureLevel: 0,
        humidityLevel: 0,
      );
}

@MappableClass()
class UpdateRequirementsDto with UpdateRequirementsDtoMappable {
  final Uuid requirementsId;
  final int soilMoistureLevel;
  final int lightLevel;
  final double temperatureLevel;
  final int humidityLevel;

  UpdateRequirementsDto({
    required this.requirementsId,
    required this.soilMoistureLevel,
    required this.lightLevel,
    required this.temperatureLevel,
    required this.humidityLevel,
  });

  factory UpdateRequirementsDto.empty() => UpdateRequirementsDto(
        soilMoistureLevel: 0,
        lightLevel: 0,
        temperatureLevel: 0,
        humidityLevel: 0,
        requirementsId: "empty",
      );
}
