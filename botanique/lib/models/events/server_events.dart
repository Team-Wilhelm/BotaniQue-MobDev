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
class ServerAuthenticatesUser extends ServerEvent
    with _$ServerAuthenticatesUser {
  static const String name = "ServerAuthenticatesUser";

  const factory ServerAuthenticatesUser({
    required String jwt,
  }) = _ServerAuthenticatesUser;

  factory ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =>
      _$ServerAuthenticatesUserFromJson(json);
}

// TODO: figure out how to extend ServerSendsErrorMessage
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
