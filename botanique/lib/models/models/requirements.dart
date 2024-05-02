import 'package:freezed_annotation/freezed_annotation.dart';

import 'uuid.dart';

part 'requirements.freezed.dart';
part 'requirements.g.dart';

@freezed
class Requirements with _$Requirements {
  const factory Requirements({
    required Uuid requirementsId,
    required Uuid plantId,
    required int lightLevel,
    required int temperatureLevel,
    required int humidityLevel,
    required int soilMoistureLevel,
  }) = _Requirements;

  factory Requirements.fromJson(Map<String, dynamic> json) =>
      _$RequirementsFromJson(json);
}
