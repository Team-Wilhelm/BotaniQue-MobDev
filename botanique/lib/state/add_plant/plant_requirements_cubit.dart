import 'package:flutter_bloc/flutter_bloc.dart';

class PlantRequirementsCubit extends Cubit<PlantRequirementsState> {
  PlantRequirementsCubit() : super(PlantRequirementsState());

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

class PlantRequirementsState {
  final int soilMoistureLevel;
  final int lightLevel;
  final int temperatureLevel;
  final int humidityLevel;

  PlantRequirementsState({
    this.soilMoistureLevel = 0,
    this.lightLevel = 0,
    this.temperatureLevel = 0,
    this.humidityLevel = 0,
  });

  PlantRequirementsState copyWith({
    int? soilMoistureLevel,
    int? lightLevel,
    int? temperatureLevel,
    int? humidityLevel,
  }) {
    return PlantRequirementsState(
      soilMoistureLevel: soilMoistureLevel ?? this.soilMoistureLevel,
      lightLevel: lightLevel ?? this.lightLevel,
      temperatureLevel: temperatureLevel ?? this.temperatureLevel,
      humidityLevel: humidityLevel ?? this.humidityLevel,
    );
  }
}
