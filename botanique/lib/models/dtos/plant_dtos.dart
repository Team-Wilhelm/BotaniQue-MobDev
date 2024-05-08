import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/uuid.dart';

part 'plant_dtos.freezed.dart';
part 'plant_dtos.g.dart';

@freezed
class CreatePlantDto with _$CreatePlantDto {
  factory CreatePlantDto({
    required String userEmail,
    required Uuid? collectionId,
    required String? deviceId,
    required String nickname,
    required String? base64Image,
    required CreateRequirementsDto createRequirementsDto,
  }) = _CreatePlantDto;

  factory CreatePlantDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePlantDtoFromJson(json);
}

@freezed
class UpdatePlantDto with _$UpdatePlantDto {
  factory UpdatePlantDto({
    required Uuid plantId,
    required Uuid? cloolectionId,
    required String? nickname,
    required String? base64Image, // leave empty to keep existing image
    required UpdateRequirementsDto updateRequirementsDto,
  }) = _UpdatePlantDto;

  factory UpdatePlantDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePlantDtoFromJson(json);
}

@freezed
class CreateRequirementsDto with _$CreateRequirementsDto {
  factory CreateRequirementsDto({
    required int soilMoistureLevel,
    required int lightLevel,
    required int temperatureLevel,
    required int humidityLevel,
  }) = _CreateRequirementsDto;

  factory CreateRequirementsDto.fromJson(Map<String, dynamic> json) =>
      _$CreateRequirementsDtoFromJson(json);

  factory CreateRequirementsDto.empty() => CreateRequirementsDto(
        soilMoistureLevel: 0,
        lightLevel: 0,
        temperatureLevel: 0,
        humidityLevel: 0,
      );
}

@freezed
class UpdateRequirementsDto with _$UpdateRequirementsDto {
  factory UpdateRequirementsDto({
    required int? soilMoistureLevel,
    required int? lightLevel,
    required int? temperatureLevel,
    required int? humidityLevel,
  }) = _UpdateRequirementsDto;

  factory UpdateRequirementsDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateRequirementsDtoFromJson(json);

  factory UpdateRequirementsDto.empty() => UpdateRequirementsDto(
        soilMoistureLevel: null,
        lightLevel: null,
        temperatureLevel: null,
        humidityLevel: null,
      );
}