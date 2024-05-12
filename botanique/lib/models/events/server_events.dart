import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../models/collections.dart';
import '../models/conditions.dart';
import '../models/uuid.dart';

part 'server_events.mapper.dart';

@MappableClass()
abstract class ServerEvent extends BaseEvent with ServerEventMappable {
  ServerEvent({required super.eventType});
}

@MappableClass(discriminatorValue: 'ServerAuthenticatesUser')
class ServerAuthenticatesUser extends ServerEvent
    with ServerAuthenticatesUserMappable {
  final String jwt;

  ServerAuthenticatesUser({
    required this.jwt,
    super.eventType = "ServerAuthenticatesUser",
  });
}

@MappableClass(discriminatorValue: 'ServerRespondsNotAuthenticated')
class ServerRespondsNotAuthenticated extends ServerEvent
    with ServerRespondsNotAuthenticatedMappable {
  ServerRespondsNotAuthenticated({
    super.eventType = "ServerRespondsNotAuthenticated",
  });
}

/*
  Used to initialize blocs with an initial state
 */
/* class InitialServerEvent extends ServerEvent {} */

/*static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    print("ServerEvent.fromJson: $type");
     return switch (type) {
      ServerSendsImageWithoutBackground.name =>
        ServerSendsImageWithoutBackground.fromJson(json),
      ServerSendsPlant.name => ServerSendsPlant.fromJson(json),
      ServerSavesPlant.name => ServerSavesPlant.fromJson(json),
      ServerConfirmsDelete.name => ServerConfirmsDelete.fromJson(json),
      ServerAuthenticatesUser.name => ServerAuthenticatesUser.fromJson(json),
      ServerConfirmsUpdate.name => ServerConfirmsUpdate.fromJson(json),

      // Collections
      ServerSendsAllCollections.name =>
        ServerSendsAllCollections.fromJson(json),
      ServerSendsPlants.name => ServerSendsPlants.fromJson(json),
      ServerSavesCollection.name => ServerSavesCollection.fromJson(json),
      ServerDeletesCollection.name => ServerDeletesCollection.fromJson(json),

      // Conditions
      ServerSendsLatestConditionsForPlant.name =>
        ServerSendsLatestConditionsForPlant.fromJson(json),

      // Errors
      ServerSendsErrorMessage.name => ServerSendsErrorMessage.fromJson(json),
      ServerRejectsWrongCredentials.name =>
        ServerRejectsWrongCredentials.fromJson(json),
      ServerRespondsNotAuthenticated.name =>
        ServerRespondsNotAuthenticated.fromJson(json),
      ServerRespondsNotAuthorized.name =>
        ServerRespondsNotAuthorized.fromJson(json),
      ServerRespondsNotFound.name => ServerRespondsNotFound.fromJson(json),
      ServerRespondsRegisterDevice.name =>
        ServerRespondsRegisterDevice.fromJson(json),
      ServerRespondsValidationError.name =>
        ServerRespondsValidationError.fromJson(json),
      ServerRejectsInvalidFile.name => ServerRejectsInvalidFile.fromJson(json),
      ServerRejectsUpdate.name => ServerRejectsUpdate.fromJson(json),
      _ => throw "Unknown event type: $type in $json"
    }; 
  }
  
}
*/

@MappableClass(discriminatorValue: 'ServerSendsImageWithoutBackground')
class ServerSendsImageWithoutBackground extends ServerEvent
    with ServerSendsImageWithoutBackgroundMappable {
  final String base64Image;

  ServerSendsImageWithoutBackground({
    required this.base64Image,
    super.eventType = "ServerSendsImageWithoutBackground",
  });
}

@MappableClass(discriminatorValue: 'ServerSendsPlant')
class ServerSendsPlant extends ServerEvent with ServerSendsPlantMappable {
  final Plant plant;

  ServerSendsPlant({
    required this.plant,
    super.eventType = "ServerSendsPlant",
  });
}

@MappableClass(discriminatorValue: 'ServerSavesPlant')
class ServerSavesPlant extends ServerEvent with ServerSavesPlantMappable {
  final Plant plant;

  ServerSavesPlant({
    required this.plant,
    super.eventType = "ServerSavesPlant",
  });
}

@MappableClass(discriminatorValue: 'ServerConfirmsUpdate')
class ServerConfirmsUpdate extends ServerEvent
    with ServerConfirmsUpdateMappable {
  ServerConfirmsUpdate({
    super.eventType = "ServerConfirmsUpdate",
  });
}

@MappableClass(discriminatorValue: 'ServerConfirmsDelete')
class ServerConfirmsDelete extends ServerEvent
    with ServerConfirmsDeleteMappable {
  ServerConfirmsDelete({
    super.eventType = "ServerConfirmsDelete",
  });
}

@MappableClass(discriminatorValue: 'ServerSendsLatestConditionsForPlant')
class ServerSendsLatestConditionsForPlant extends ServerEvent
    with ServerSendsLatestConditionsForPlantMappable {
  final ConditionsLog conditionsLog;

  ServerSendsLatestConditionsForPlant({
    required this.conditionsLog,
    super.eventType = "ServerSendsLatestConditionsForPlant",
  });
}

/*
  Collections
 */
@MappableClass(discriminatorValue: 'ServerSendsAllCollections')
class ServerSendsAllCollections extends ServerEvent
    with ServerSendsAllCollectionsMappable {
  final List<GetCollectionDto> collections;

  ServerSendsAllCollections({
    super.eventType = "ServerSendsAllCollections",
    required this.collections,
  });
}

@MappableClass(discriminatorValue: 'ServerSendsPlants')
class ServerSendsPlants extends ServerEvent with ServerSendsPlantsMappable {
  final List<Plant> plants;
  final Uuid? collectionId;

  ServerSendsPlants({
    required this.plants,
    this.collectionId,
    super.eventType = "ServerSendsPlants",
  });
}

@MappableClass(discriminatorValue: 'ServerSavesCollection')
class ServerSavesCollection extends ServerEvent
    with ServerSavesCollectionMappable {
  final Collection collection;

  ServerSavesCollection({
    required this.collection,
    super.eventType = "ServerSavesCollection",
  });
}

@MappableClass(discriminatorValue: 'ServerDeletesCollection')
class ServerDeletesCollection extends ServerEvent
    with ServerDeletesCollectionMappable {
  ServerDeletesCollection({
    super.eventType = "ServerDeletesCollection",
  });
}

/*
  Error messages
 */

@MappableClass(discriminatorValue: 'ServerSendsErrorMessage')
class ServerSendsErrorMessage extends ServerEvent
    with ServerSendsErrorMessageMappable {
  final String error;

  ServerSendsErrorMessage({
    required this.error,
    super.eventType = "ServerEventWithError",
  });
}

@MappableClass(discriminatorValue: 'ServerRejectsWrongCredentials')
class ServerRejectsWrongCredentials extends ServerSendsErrorMessage
    with ServerRejectsWrongCredentialsMappable {
  ServerRejectsWrongCredentials(
      {super.eventType = "ServerRejectsWrongCredentials",
      required super.error});
}

@MappableClass(discriminatorValue: 'ServerRespondsNotAuthorized')
class ServerRespondsNotAuthorized extends ServerSendsErrorMessage
    with ServerRespondsNotAuthorizedMappable {
  ServerRespondsNotAuthorized(
      {super.eventType = "ServerRespondsNotAuthorized", required super.error});
}

@MappableClass(discriminatorValue: 'ServerRespondsNotFound')
class ServerRespondsNotFound extends ServerSendsErrorMessage
    with ServerRespondsNotFoundMappable {
  ServerRespondsNotFound(
      {super.eventType = "ServerRespondsNotFound", required super.error});
}

@MappableClass(discriminatorValue: 'ServerRespondsRegisterDevice')
class ServerRespondsRegisterDevice extends ServerSendsErrorMessage
    with ServerRespondsRegisterDeviceMappable {
  ServerRespondsRegisterDevice(
      {super.eventType = "ServerRespondsRegisterDevice", required super.error});
}

@MappableClass(discriminatorValue: 'ServerRespondsValidationError')
class ServerRespondsValidationError extends ServerSendsErrorMessage
    with ServerRespondsValidationErrorMappable {
  ServerRespondsValidationError(
      {super.eventType = "ServerRespondsValidationError",
      required super.error});
}

@MappableClass(discriminatorValue: 'ServerRejectsInvalidFile')
class ServerRejectsInvalidFile extends ServerSendsErrorMessage
    with ServerRejectsInvalidFileMappable {
  ServerRejectsInvalidFile(
      {super.eventType = "ServerRejectsInvalidFile", required super.error});
}

@MappableClass(discriminatorValue: 'ServerRejectsUpdate')
class ServerRejectsUpdate extends ServerSendsErrorMessage
    with ServerRejectsUpdateMappable {
  ServerRejectsUpdate({
    super.eventType = "ServerRejectsUpdate",
    required super.error,
  });
}
