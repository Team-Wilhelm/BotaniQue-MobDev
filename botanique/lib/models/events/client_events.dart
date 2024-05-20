import 'package:dart_mappable/dart_mappable.dart';

import '../auth/log_in_dto.dart';
import '../models/collections.dart';
import '../models/plant.dart';
import '../models/uuid.dart';

part 'client_events.mapper.dart';

@MappableClass(discriminatorKey: 'eventType')
abstract class BaseEvent with BaseEventMappable {
  final String eventType;

  BaseEvent({required this.eventType});
}

@MappableClass(discriminatorValue: 'BaseDto')
abstract class ClientEvent extends BaseEvent with ClientEventMappable {
  ClientEvent({required super.eventType});
}

@MappableClass(discriminatorValue: 'ClientWantsToLogIn')
class ClientWantsToLogIn extends ClientEvent with ClientWantsToLogInMappable {
  final LoginDto loginDto;

  ClientWantsToLogIn({
    required this.loginDto,
    required super.eventType,
  });
}

@MappableClass(discriminatorValue: 'ClientWantsToLogOut')
class ClientWantsToLogOut extends ClientEvent with ClientWantsToLogOutMappable {
  final String email;

  ClientWantsToLogOut({
    required this.email,
    required super.eventType,
  });
}

/* @MappableClass()
class ClientWantsToSignUp extends ClientEvent with ClientWantsToSignUpMappable {
  final RegisterUserDto registerUserDto;

  ClientWantsToSignUp({
    required this.registerUserDto,
    required super.eventType,
  });
} */

/*
  * Events with JWT
 */
@MappableClass(discriminatorValue: "BaseDtoWithJwt")
abstract class ClientEventWithJwt extends ClientEvent
    with ClientEventWithJwtMappable {
  final String jwt;

  ClientEventWithJwt({
    required this.jwt,
    required super.eventType,
  });
}

@MappableClass(discriminatorValue: "ClientWantsToCheckJwtValidity")
class ClientWantsToCheckJwtValidity extends ClientEventWithJwt
    with ClientWantsToCheckJwtValidityMappable {
  ClientWantsToCheckJwtValidity({
    required super.jwt,
    super.eventType = "ClientWantsToCheckJwtValidity",
  });
}

@MappableClass(discriminatorValue: "ClientWantsAllPlants")
class ClientWantsAllPlants extends ClientEventWithJwt
    with ClientWantsAllPlantsMappable {
  final int pageNumber;
  final int pageSize;

  ClientWantsAllPlants({
    required super.jwt,
    required this.pageNumber,
    required this.pageSize,
    super.eventType = "ClientWantsAllPlantsMappable",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToDeletePlant")
class ClientWantsToDeletePlant extends ClientEventWithJwt
    with ClientWantsToDeletePlantMappable {
  final Uuid plantId;

  ClientWantsToDeletePlant({
    required super.jwt,
    super.eventType = "ClientWantsToDeletePlant",
    required this.plantId,
  });
}

@MappableClass(discriminatorValue: "ClientWantsToUpdatePlant")
class ClientWantsToUpdatePlant extends ClientEventWithJwt
    with ClientWantsToUpdatePlantMappable {
  final UpdatePlantDto updatePlantDto;

  ClientWantsToUpdatePlant({
    required super.jwt,
    super.eventType = "ClientWantsToUpdatePlant",
    required this.updatePlantDto,
  });
}

@MappableClass(discriminatorValue: "ClientWantsPlantById")
class ClientWantsPlantById extends ClientEventWithJwt
    with ClientWantsPlantByIdMappable {
  final Uuid plantId;

  ClientWantsPlantById({
    required super.jwt,
    super.eventType = "ClientWantsPlantById",
    required this.plantId,
  });
}

@MappableClass(discriminatorValue: "ClientWantsToRemoveBackgroundFromImage")
class ClientWantsToRemoveBackgroundFromImage extends ClientEventWithJwt
    with ClientWantsToRemoveBackgroundFromImageMappable {
  final String base64Image;

  ClientWantsToRemoveBackgroundFromImage({
    required super.jwt,
    super.eventType = "ClientWantsToRemoveBackgroundFromImage",
    required this.base64Image,
  });
}

@MappableClass(discriminatorValue: "ClientWantsToCreatePlant")
class ClientWantsToCreatePlant extends ClientEventWithJwt
    with ClientWantsToCreatePlantMappable {
  final CreatePlantDto createPlantDto;

  ClientWantsToCreatePlant({
    required super.jwt,
    super.eventType = "ClientWantsToCreatePlant",
    required this.createPlantDto,
  });
}

@MappableClass(discriminatorValue: "ClientWantsLatestConditionsForPlant")
class ClientWantsLatestConditionsForPlant extends ClientEventWithJwt
    with ClientWantsLatestConditionsForPlantMappable {
  final Uuid plantId;

  ClientWantsLatestConditionsForPlant({
    required super.jwt,
    required this.plantId,
    super.eventType = "ClientWantsLatestConditionsForPlant",
  });
}

/*
  * Collections
 */
@MappableClass(discriminatorValue: "ClientWantsAllCollections")
class ClientWantsAllCollections extends ClientEventWithJwt
    with ClientWantsAllCollectionsMappable {
  ClientWantsAllCollections({
    required super.jwt,
    super.eventType = "ClientWantsAllCollections",
  });
}

@MappableClass(discriminatorValue: "ClientWantsPlantsForCollection")
class ClientWantsPlantsForCollection extends ClientEventWithJwt
    with ClientWantsPlantsForCollectionMappable {
  final Uuid collectionId;

  ClientWantsPlantsForCollection({
    required super.jwt,
    required this.collectionId,
    super.eventType = "ClientWantsPlantsForCollection",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToCreateCollection")
class ClientWantsToCreateCollection extends ClientEventWithJwt
    with ClientWantsToCreateCollectionMappable {
  final CreateCollectionDto createCollectionDto;

  ClientWantsToCreateCollection({
    required super.jwt,
    required this.createCollectionDto,
    super.eventType = "ClientWantsToCreateCollection",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToUpdateCollection")
class ClientWantsToUpdateCollection extends ClientEventWithJwt
    with ClientWantsToUpdateCollectionMappable {
  final UpdateCollectionDto updateCollectionDto;

  ClientWantsToUpdateCollection({
    required super.jwt,
    required this.updateCollectionDto,
    super.eventType = "ClientWantsToUpdateCollection",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToDeleteCollection")
class ClientWantsToDeleteCollection extends ClientEventWithJwt
    with ClientWantsToDeleteCollectionMappable {
  final Uuid collectionId;

  ClientWantsToDeleteCollection({
    required super.jwt,
    required this.collectionId,
    super.eventType = "ClientWantsToDeleteCollection",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToUpdateProfileImage")
class ClientWantsToUpdateProfileImage extends ClientEventWithJwt
    with ClientWantsToUpdateProfileImageMappable {
  final String base64Image;

  ClientWantsToUpdateProfileImage({
    required super.jwt,
    required this.base64Image,
    super.eventType = "ClientWantsToUpdateProfileImage",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToUpdateUsername")
class ClientWantsToUpdateUsername extends ClientEventWithJwt
    with ClientWantsToUpdateUsernameMappable {
  final String username;

  ClientWantsToUpdateUsername({
    required super.jwt,
    required this.username,
    super.eventType = "ClientWantsToUpdateUsername",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToUpdatePassword")
class ClientWantsToUpdatePassword extends ClientEventWithJwt
    with ClientWantsToUpdatePasswordMappable {
  final String password;

  ClientWantsToUpdatePassword({
    required super.jwt,
    required this.password,
    super.eventType = "ClientWantsToUpdatePassword",
  });
}

@MappableClass(discriminatorValue: "ClientWantsToDeleteProfileImage")
class ClientWantsToDeleteProfileImage extends ClientEventWithJwt
    with ClientWantsToDeleteProfileImageMappable {
  ClientWantsToDeleteProfileImage({
    required super.jwt,
    super.eventType = "ClientWantsToDeleteProfileImage",
  });
}
