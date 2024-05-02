import 'package:freezed_annotation/freezed_annotation.dart';

import 'requirements.dart';
import 'uuid.dart';

part 'plant.freezed.dart';
part 'plant.g.dart';

@freezed
class Plant with _$Plant {
  // final List<ConditionLogs> conditionLogs; TODO: add

  const factory Plant({
    required Uuid plantId,
    required String? deviceID,
    required String userEmail,
    required Uuid? collectionId,
    required String nickname,
    required String imageUrl,
    required Requirements requirements,
  }) = _Plant;

  factory Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);
}
