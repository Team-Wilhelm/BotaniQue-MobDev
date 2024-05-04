import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_events.freezed.dart';
part 'server_events.g.dart';

class ServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    print("ServerEvent.fromJson: $type");
    return switch (type) {
      ServerSendsImageWithoutBackground.name =>
        ServerSendsImageWithoutBackground.fromJson(json),
      ServerSendsPlant.name => ServerSendsPlant.fromJson(json),
      ServerCreatesNewPlant.name => ServerCreatesNewPlant.fromJson(json),
      ServerSendsErrorMessage.name => ServerSendsErrorMessage.fromJson(json),
      ServerAuthenticatesUser.name => ServerAuthenticatesUser.fromJson(json),
      ServerRejectsWrongCredentials.name =>
        ServerRejectsWrongCredentials.fromJson(json),
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
class ServerSendsAllPlants extends ServerEvent with _$ServerSendsAllPlants {
  static const String name = "ServerSendsAllPlants";
  const factory ServerSendsAllPlants({
    required List<Plant> plants,
  }) = _ServerSendsAllPlants;

  factory ServerSendsAllPlants.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsAllPlantsFromJson(json);
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
class ServerRejectsWrongCredentials extends ServerSendsErrorMessage
    with _$ServerRejectsWrongCredentials, _$ServerSendsErrorMessage {
  static const String name = "ServerRejectsWrongCredentials";

  const factory ServerRejectsWrongCredentials() = _ServerRejectsWrongCredentials;

  factory ServerRejectsWrongCredentials.fromJson(Map<String, dynamic> json) =>
      _$ServerRejectsWrongCredentialsFromJson(json);
}


@freezed
class ServerRespondsNotAuthenticated extends ServerSendsErrorMessage
    with _$ServerRespondsNotAuthenticated, _$ServerSendsErrorMessage {
  static const String name = "ServerRespondsNotAuthenticated";

  const factory ServerRespondsNotAuthenticated() =
      _ServerRespondsNotAuthenticated;

  factory ServerRespondsNotAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsNotAuthenticatedFromJson(json);
}

@freezed
class ServerRespondsNotAuthorized extends ServerSendsErrorMessage
    with _$ServerRespondsNotAuthorized, _$ServerSendsErrorMessage {
  static const String name = "ServerRespondsNotAuthorized";

  const factory ServerRespondsNotAuthorized() = _ServerRespondsNotAuthorized;

  factory ServerRespondsNotAuthorized.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsNotAuthorizedFromJson(json);
}

@freezed
class ServerRespondsNotFound extends ServerSendsErrorMessage with _$ServerRespondsNotFound, _$ServerSendsErrorMessage {
  static const String name = "ServerRespondsNotFound";

  const factory ServerRespondsNotFound() = _ServerRespondsNotFound;

  factory ServerRespondsNotFound.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsNotFoundFromJson(json);
}

@freezed
class ServerRespondsRegisterDevice extends ServerSendsErrorMessage with _$ServerRespondsRegisterDevice, _$ServerSendsErrorMessage {
  static const String name = "ServerRespondsRegisterDevice";

  const factory ServerRespondsRegisterDevice() = _ServerRespondsRegisterDevice;

  factory ServerRespondsRegisterDevice.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsRegisterDeviceFromJson(json);
}

@freezed
class ServerRespondsValidationError extends ServerSendsErrorMessage with _$ServerRespondsValidationError, _$ServerSendsErrorMessage {
  static const String name = "ServerRespondsValidationError";

  const factory ServerRespondsValidationError() = _ServerRespondsValidationError;

  factory ServerRespondsValidationError.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsValidationErrorFromJson(json);
}

@freezed
class ServerRejectsInvalidFile extends ServerSendsErrorMessage with _$ServerRejectsInvalidFile, _$ServerSendsErrorMessage {
  static const String name = "ServerRejectsInvalidFile";

  const factory ServerRejectsInvalidFile() = _ServerRejectsInvalidFile;

  factory ServerRejectsInvalidFile.fromJson(Map<String, dynamic> json) =>
      _$ServerRejectsInvalidFileFromJson(json);
}
