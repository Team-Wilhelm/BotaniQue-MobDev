import 'package:freezed_annotation/freezed_annotation.dart';

import 'plant.dart';
import 'uuid.dart';

part 'collections.freezed.dart';
part 'collections.g.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    required Uuid collectionId,
    required String name,
    required String userEmail,
    required List<Plant> plants,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}

@freezed
class CreateCollectionDto with _$CreateCollectionDto {
  factory CreateCollectionDto({
    required String name,
  }) = _CreateCollectionDto;

  factory CreateCollectionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCollectionDtoFromJson(json);
}

@freezed
class UpdateCollectionDto with _$UpdateCollectionDto {
  factory UpdateCollectionDto({
    required Uuid collectionId,
    required String name,
  }) = _UpdateCollectionDto;

  factory UpdateCollectionDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCollectionDtoFromJson(json);
}
