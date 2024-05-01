import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_requirements_dto.freezed.dart';
part 'create_requirements_dto.g.dart';

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
