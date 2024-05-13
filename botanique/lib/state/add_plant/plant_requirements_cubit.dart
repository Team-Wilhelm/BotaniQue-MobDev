import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models/plant.dart';
import '../../models/models/uuid.dart';

class PlantRequirementsCubit extends Cubit<RequirementsState> {
  PlantRequirementsCubit() : super(RequirementsState.empty());

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
    emit(RequirementsState.empty());
  }

  void setRequirementsToEdit(Requirements requirements) {
    emit(RequirementsState(
      soilMoistureLevel: requirements.soilMoistureLevel,
      lightLevel: requirements.lightLevel,
      temperatureLevel: requirements.temperatureLevel,
      humidityLevel: requirements.humidityLevel,
      requirementsId: requirements.requirementsId,
    ));
  }
}

class RequirementsState {
  final Uuid? requirementsId;
  final int soilMoistureLevel;
  final int lightLevel;
  final int temperatureLevel;
  final int humidityLevel;

  RequirementsState({
    required this.soilMoistureLevel,
    required this.lightLevel,
    required this.temperatureLevel,
    required this.humidityLevel,
    required this.requirementsId,
  });

  CreateRequirementsDto toCreateRequirementsDto() {
    return CreateRequirementsDto(
      soilMoistureLevel: soilMoistureLevel,
      lightLevel: lightLevel,
      temperatureLevel: temperatureLevel,
      humidityLevel: humidityLevel,
    );
  }

  UpdateRequirementsDto toUpdateRequirementsDto() {
    if (requirementsId == null) throw Exception("Requirements ID is null");

    return UpdateRequirementsDto(
      requirementsId: requirementsId!,
      soilMoistureLevel: soilMoistureLevel,
      lightLevel: lightLevel,
      temperatureLevel: temperatureLevel,
      humidityLevel: humidityLevel,
    );
  }

  RequirementsState copyWith({
    int? soilMoistureLevel,
    int? lightLevel,
    int? temperatureLevel,
    int? humidityLevel,
    Uuid? requirementsId,
  }) {
    return RequirementsState(
      soilMoistureLevel: soilMoistureLevel ?? this.soilMoistureLevel,
      lightLevel: lightLevel ?? this.lightLevel,
      temperatureLevel: temperatureLevel ?? this.temperatureLevel,
      humidityLevel: humidityLevel ?? this.humidityLevel,
      requirementsId: requirementsId ?? this.requirementsId,
    );
  }

  static RequirementsState empty() {
    return RequirementsState(
      soilMoistureLevel: 0,
      lightLevel: 0,
      temperatureLevel: 0,
      humidityLevel: 0,
      requirementsId: null,
    );
  }
}
