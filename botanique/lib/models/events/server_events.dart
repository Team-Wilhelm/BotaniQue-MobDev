import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../models/collections.dart';
import '../models/conditions.dart';
import '../models/uuid.dart';

part 'server_events.mapper.dart';

@MappableClass(discriminatorValue: "BaseDto")
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

@MappableClass(discriminatorValue: 'ServerSendsImageWithoutBackground')
class ServerSendsImageWithoutBackground extends ServerEvent
    with ServerSendsImageWithoutBackgroundMappable {
  final String base64Image;

  ServerSendsImageWithoutBackground({
    required this.base64Image,
    super.eventType = "ServerSendsImageWithoutBackground",
  });
}

/*
  Plants
 */
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

@MappableClass(discriminatorValue: 'ServerSendsHistoricConditionLogsForPlant')
class ServerSendsHistoricConditionLogsForPlant extends ServerEvent
    with ServerSendsHistoricConditionLogsForPlantMappable {
  final List<ConditionsLog> conditionsLogs;

  ServerSendsHistoricConditionLogsForPlant({
    required this.conditionsLogs,
    super.eventType = "ServerSendsHistoricConditionLogsForPlant",
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

@MappableClass(discriminatorValue: 'ServerSendsCriticalPlants')
class ServerSendsCriticalPlants extends ServerEvent
    with ServerSendsCriticalPlantsMappable {
  final List<GetCriticalPlantDto> plants;

  ServerSendsCriticalPlants({
    required this.plants,
    super.eventType = "ServerSendsCriticalPlants",
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

