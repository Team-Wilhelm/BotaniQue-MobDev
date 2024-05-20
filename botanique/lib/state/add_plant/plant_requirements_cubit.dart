import 'package:botanique/models/enums/app_enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models/plant.dart';
import '../../models/models/uuid.dart';

class PlantRequirementsCubit extends Cubit<RequirementsState> {
  PlantRequirementsCubit() : super(RequirementsState.empty());

  void updateSoilMoistureLevel(RequirementLevel soilMoistureLevel) {
    emit(state.copyWith(soilMoistureLevel: soilMoistureLevel));
  }

  void updateLightLevel(RequirementLevel lightLevel) {
    emit(state.copyWith(lightLevel: lightLevel));
  }

  void updateTemperatureLevel(double temperatureLevel) {
    emit(state.copyWith(temperatureLevel: temperatureLevel));
  }

  void updateHumidityLevel(RequirementLevel humidityLevel) {
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
  final RequirementLevel soilMoistureLevel;
  final RequirementLevel lightLevel;
  final double temperatureLevel;
  final RequirementLevel humidityLevel;

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
    RequirementLevel? soilMoistureLevel,
    RequirementLevel? lightLevel,
    double? temperatureLevel,
    RequirementLevel? humidityLevel,
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
      soilMoistureLevel: RequirementLevel.low,
      lightLevel: RequirementLevel.low,
      temperatureLevel: 0,
      humidityLevel: RequirementLevel.low,
      requirementsId: null,
    );
  }
}
