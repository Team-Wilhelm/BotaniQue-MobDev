import 'package:botanique/models/models/requirement_level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'uuid.dart';

part 'requirements.freezed.dart';
part 'requirements.g.dart';

@freezed
class Requirements with _$Requirements {
  const factory Requirements({
    required Uuid requirementsId,
    required Uuid plantId,
    required RequirementLevel lightLevel,
    required RequirementLevel temperatureLevel,
    required RequirementLevel humidityLevel,
    required RequirementLevel soilMoistureLevel,
  }) = _Requirements;

  factory Requirements.fromJson(Map<String, dynamic> json) =>
      _$RequirementsFromJson(json);

// TODO: fix conversion
  static RequirementLevel _convertNumericEnum(int numericEnum) {
    return RequirementLevel.values[numericEnum];
  }
}
