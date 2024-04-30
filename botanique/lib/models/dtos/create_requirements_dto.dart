class CreateRequirementsDto {
  final int soilMoistureLevel;
  final int lightLevel;
  final int temperatureLevel;
  final int humidityLevel;

  CreateRequirementsDto({
    required this.soilMoistureLevel,
    required this.lightLevel,
    required this.temperatureLevel,
    required this.humidityLevel,
  });
}
