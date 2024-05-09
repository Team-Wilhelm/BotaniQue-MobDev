import 'package:botanique/models/models/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conditions.freezed.dart';
part 'conditions.g.dart';

@freezed
class ConditionsLog with _$ConditionsLog {
  factory ConditionsLog({
    required Uuid conditionsId,
    required Uuid plantId,
    required DateTime timeStamp,
    required int mood,
    required double soilMoisture,
    required double light,
    required double temperature,
    required double humidity,
  }) = _ConditionsLog;

  factory ConditionsLog.fromJson(Map<String, dynamic> json) =>
      _$ConditionsLogFromJson(json);
}
