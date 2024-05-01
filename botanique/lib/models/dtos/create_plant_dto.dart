import 'package:botanique/models/dtos/create_requirements_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plant_dto.freezed.dart';
part 'create_plant_dto.g.dart';

@freezed
class CreatePlantDto with _$CreatePlantDto {
  factory CreatePlantDto({
    required String name,
    required String description,
    required String imageUrl,
    required CreateRequirementsDto requirements,
  }) = _CreatePlantDto;

  factory CreatePlantDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePlantDtoFromJson(json);
}
