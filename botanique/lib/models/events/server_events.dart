import 'package:botanique/models/dtos/user/user_dto.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/models/conditions.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/collections.dart';
import '../models/uuid.dart';

part 'server_events.freezed.dart';
part 'server_events.g.dart';

class ServerEventHelper {
  static bool isErrorMessage(ServerEvent event) {
    return event is ServerSendsErrorMessage ||
        event is ServerRespondsNotAuthenticated ||
        event is ServerRespondsNotAuthorized ||
        event is ServerRejectsInvalidFile ||
        event is ServerRespondsValidationError ||
        event is ServerRespondsRegisterDevice ||
        event is ServerRespondsNotFound ||
        event is ServerRejectsWrongCredentials;
  }
}

/*
  Used to initialize blocs with an initial state
 */
class InitialServerEvent extends ServerEvent {}

class ServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    print("ServerEvent.fromJson: $type");
    return switch (type) {
      ServerSendsImageWithoutBackground.name =>
        ServerSendsImageWithoutBackground.fromJson(json),
      ServerSendsPlant.name => ServerSendsPlant.fromJson(json),
      ServerCreatesNewPlant.name => ServerCreatesNewPlant.fromJson(json),
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

@freezed
class ServerSendsImageWithoutBackground extends ServerEvent
    with _$ServerSendsImageWithoutBackground {
  static const String name = "ServerSendsImageWithoutBackground";

  const factory ServerSendsImageWithoutBackground({
    required String base64Image,
  }) = _ServerSendsImageWithoutBackground;

  factory ServerSendsImageWithoutBackground.fromJson(
          Map<String, dynamic> json) =>
      _$ServerSendsImageWithoutBackgroundFromJson(json);
}

@freezed
class ServerSendsPlant extends ServerEvent with _$ServerSendsPlant {
  static const String name = "ServerSendsPlant";

  const factory ServerSendsPlant({
    required Plant plant,
  }) = _ServerSendsPlant;

  factory ServerSendsPlant.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsPlantFromJson(json);
}

@freezed
class ServerCreatesNewPlant extends ServerEvent with _$ServerCreatesNewPlant {
  static const String name = "ServerCreatesNewPlant";

  const factory ServerCreatesNewPlant({
    required Plant plant,
  }) = _ServerCreatesNewPlant;

  factory ServerCreatesNewPlant.fromJson(Map<String, dynamic> json) =>
      _$ServerCreatesNewPlantFromJson(json);
}

@freezed
class ServerConfirmsUpdate extends ServerEvent with _$ServerConfirmsUpdate {
  static const String name = "ServerConfirmsUpdate";

  const factory ServerConfirmsUpdate({GetUserDto? getUserDto}) =
      _ServerConfirmsUpdate;

  factory ServerConfirmsUpdate.fromJson(Map<String, dynamic> json) =>
      _$ServerConfirmsUpdateFromJson(json);
}

@freezed
class ServerAuthenticatesUser extends ServerEvent
    with _$ServerAuthenticatesUser {
  static const String name = "ServerAuthenticatesUser";

  const factory ServerAuthenticatesUser({
    required String jwt,
  }) = _ServerAuthenticatesUser;

  factory ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =>
      _$ServerAuthenticatesUserFromJson(json);
}

@freezed
class ServerConfirmsDelete extends ServerEvent with _$ServerConfirmsDelete {
  static const String name = "ServerConfirmsDelete";

  const factory ServerConfirmsDelete() = _ServerConfirmsDelete;

  factory ServerConfirmsDelete.fromJson(Map<String, dynamic> json) =>
      _$ServerConfirmsDeleteFromJson(json);
}

@freezed
class ServerSendsLatestConditionsForPlant extends ServerEvent
    with _$ServerSendsLatestConditionsForPlant {
  static const String name = "ServerSendsLatestConditionsForPlant";

  const factory ServerSendsLatestConditionsForPlant({
    required ConditionsLog conditionsLog,
  }) = _ServerSendsLatestConditionsForPlant;

  factory ServerSendsLatestConditionsForPlant.fromJson(
          Map<String, dynamic> json) =>
      _$ServerSendsLatestConditionsForPlantFromJson(json);
}

/*
  Collections
 */
@freezed
class ServerSendsAllCollections extends ServerEvent
    with _$ServerSendsAllCollections {
  static const String name = "ServerSendsAllCollections";

  const factory ServerSendsAllCollections({
    required List<GetCollectionDto> collections,
  }) = _ServerSendsAllCollections;

  factory ServerSendsAllCollections.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsAllCollectionsFromJson(json);
}

@freezed
class ServerSendsPlants extends ServerEvent
    with _$ServerSendsPlants {
  static const String name = "ServerSendsPlants";

  const factory ServerSendsPlants({
    required List<Plant> plants,
    Uuid? collectionId,
  }) = _ServerSendsPlants;

  factory ServerSendsPlants.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsPlantsFromJson(json);
}

@freezed
class ServerSavesCollection extends ServerEvent with _$ServerSavesCollection {
  static const String name = "ServerCreatesCollection";

  const factory ServerSavesCollection({
    required Collection collection,
  }) = _ServerSavesCollection;

  factory ServerSavesCollection.fromJson(Map<String, dynamic> json) =>
      _$ServerSavesCollectionFromJson(json);
}

@freezed
class ServerDeletesCollection extends ServerEvent
    with _$ServerDeletesCollection {
  static const String name = "ServerDeletesCollection";

  const factory ServerDeletesCollection() = _ServerDeletesCollection;

  factory ServerDeletesCollection.fromJson(Map<String, dynamic> json) =>
      _$ServerDeletesCollectionFromJson(json);
}

/*
  Error messages
 */
@freezed
class ServerSendsErrorMessage extends ServerEvent
    with _$ServerSendsErrorMessage {
  static const String name = "ServerSendsErrorMessage";

  const factory ServerSendsErrorMessage({
    required String error,
  }) = _ServerSendsErrorMessage;

  factory ServerSendsErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsErrorMessageFromJson(json);
}

@freezed
class ServerRejectsWrongCredentials extends ServerEvent
    with _$ServerRejectsWrongCredentials {
  static const String name = "ServerRejectsWrongCredentials";

  const factory ServerRejectsWrongCredentials({
    required String error,
  }) = _ServerRejectsWrongCredentials;

  factory ServerRejectsWrongCredentials.fromJson(Map<String, dynamic> json) =>
      _$ServerRejectsWrongCredentialsFromJson(json);
}

@freezed
class ServerRespondsNotAuthenticated extends ServerEvent
    with _$ServerRespondsNotAuthenticated {
  static const String name = "ServerRespondsNotAuthenticated";

  const factory ServerRespondsNotAuthenticated({
    required String error,
  }) = _ServerRespondsNotAuthenticated;

  factory ServerRespondsNotAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsNotAuthenticatedFromJson(json);
}

@freezed
class ServerRespondsNotAuthorized extends ServerEvent
    with _$ServerRespondsNotAuthorized {
  static const String name = "ServerRespondsNotAuthorized";

  const factory ServerRespondsNotAuthorized({
    required String error,
  }) = _ServerRespondsNotAuthorized;

  factory ServerRespondsNotAuthorized.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsNotAuthorizedFromJson(json);
}

@freezed
class ServerRespondsNotFound extends ServerEvent with _$ServerRespondsNotFound {
  static const String name = "ServerRespondsNotFound";

  const factory ServerRespondsNotFound({
    required String error,
  }) = _ServerRespondsNotFound;

  factory ServerRespondsNotFound.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsNotFoundFromJson(json);
}

@freezed
class ServerRespondsRegisterDevice extends ServerEvent
    with _$ServerRespondsRegisterDevice {
  static const String name = "ServerRespondsRegisterDevice";

  const factory ServerRespondsRegisterDevice({
    required String error,
  }) = _ServerRespondsRegisterDevice;

  factory ServerRespondsRegisterDevice.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsRegisterDeviceFromJson(json);
}

@freezed
class ServerRespondsValidationError extends ServerEvent
    with _$ServerRespondsValidationError {
  static const String name = "ServerRespondsValidationError";

  const factory ServerRespondsValidationError({
    required String error,
  }) = _ServerRespondsValidationError;

  factory ServerRespondsValidationError.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsValidationErrorFromJson(json);
}

@freezed
class ServerRejectsInvalidFile extends ServerEvent
    with _$ServerRejectsInvalidFile {
  static const String name = "ServerRejectsInvalidFile";

  const factory ServerRejectsInvalidFile({
    required String error,
  }) = _ServerRejectsInvalidFile;

  factory ServerRejectsInvalidFile.fromJson(Map<String, dynamic> json) =>
      _$ServerRejectsInvalidFileFromJson(json);
}

@freezed
class ServerRejectsUpdate extends ServerEvent with _$ServerRejectsUpdate {
  static const String name = "ServerRejectsUpdate";

  const factory ServerRejectsUpdate(
      {required String errorMessage,
      required GetUserDto getUserDto}) = _ServerRejectsUpdate;

  factory ServerRejectsUpdate.fromJson(Map<String, dynamic> json) =>
      _$ServerRejectsUpdateFromJson(json);
}
