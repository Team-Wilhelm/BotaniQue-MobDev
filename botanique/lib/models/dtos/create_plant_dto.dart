import 'package:botanique/models/dtos/create_requirements_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/uuid.dart';

part 'create_plant_dto.freezed.dart';
part 'create_plant_dto.g.dart';

@freezed
class CreatePlantDto with _$CreatePlantDto {
  factory CreatePlantDto({
    required String userEmail,
    required Uuid? collectionId,
    required String? deviceId,
    required String nickname,
    required String? base64Image,
    required CreateRequirementsDto createRequirementsDto,
  }) = _CreatePlantDto;

  factory CreatePlantDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePlantDtoFromJson(json);
}
