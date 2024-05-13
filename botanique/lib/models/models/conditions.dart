import 'package:botanique/models/models/uuid.dart';
import 'package:dart_mappable/dart_mappable.dart';

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
}
