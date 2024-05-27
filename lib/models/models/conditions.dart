import 'package:botanique/models/models/uuid.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../enums/app_enums.dart';

part 'conditions.mapper.dart';

@MappableClass()
class ConditionsLog with ConditionsLogMappable {
  final Uuid conditionsId;
  final Uuid plantId;
  final DateTime timeStamp;
  final int mood;
  final double soilMoisture;
  final double light;
  final double temperature;
  final double humidity;

  ConditionsLog({
    required this.conditionsId,
    required this.plantId,
    required this.timeStamp,
    required this.mood,
    required this.soilMoisture,
    required this.light,
    required this.temperature,
    required this.humidity,
  });

  double getStatValue(PlantDetailStat stat) {
    switch (stat) {
      case PlantDetailStat.soilMoisture:
        return soilMoisture;
      case PlantDetailStat.temperature:
        return temperature;
      case PlantDetailStat.light:
        return light;
      case PlantDetailStat.humidity:
        return humidity;
      case PlantDetailStat.mood:
        return mood.toDouble();  
    }
  }
}
