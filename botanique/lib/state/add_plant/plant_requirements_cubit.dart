import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/dtos/plant_dtos.dart';

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

  void reset() {
    emit(CreateRequirementsDto.empty());
  }
}
