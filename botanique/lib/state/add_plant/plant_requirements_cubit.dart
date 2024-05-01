import 'package:botanique/models/dtos/create_requirements_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlantRequirementsCubit extends Cubit<CreateRequirementsDto> {
  PlantRequirementsCubit() : super(CreateRequirementsDto.empty());

  void updateSoilMoistureLevel(int soilMoistureLevel) {
    emit(state.copyWith(soilMoistureLevel: soilMoistureLevel));
  }

  void updateLightLevel(int lightLevel) {
    emit(state.copyWith(lightLevel: lightLevel));
  }

  void updateTemperatureLevel(int temperatureLevel) {
    emit(state.copyWith(temperatureLevel: temperatureLevel));
  }

  void updateHumidityLevel(int humidityLevel) {
    emit(state.copyWith(humidityLevel: humidityLevel));
  }
}
