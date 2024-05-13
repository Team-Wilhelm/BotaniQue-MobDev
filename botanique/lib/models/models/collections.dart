import 'package:dart_mappable/dart_mappable.dart';

import 'plant.dart';
import 'uuid.dart';

part 'collections.mapper.dart';

const allPlantsCollectionId = "all-plants";

@MappableClass()
class Collection with CollectionMappable {
  final Uuid collectionId;
  final String name;
  final String userEmail;
  final List<Plant> plants;

  Collection({
    required this.collectionId,
    required this.name,
    required this.userEmail,
    required this.plants,
  });
}

@MappableClass()
class CreateCollectionDto with CreateCollectionDtoMappable {
  final String name;

  CreateCollectionDto({
    required this.name,
  });
}

@MappableClass()
class UpdateCollectionDto with UpdateCollectionDtoMappable {
  final Uuid collectionId;
  final String name;

  UpdateCollectionDto({
    required this.collectionId,
    required this.name,
  });
}

@MappableClass()
class GetCollectionDto with GetCollectionDtoMappable {
  final Uuid collectionId;
  final String name;

  GetCollectionDto({
    required this.collectionId,
    required this.name,
  });

  factory GetCollectionDto.allPlants() => GetCollectionDto(
        collectionId: allPlantsCollectionId,
        name: "All Plants",
      );

  @override
  String toString() {
    return name;
  }
}
