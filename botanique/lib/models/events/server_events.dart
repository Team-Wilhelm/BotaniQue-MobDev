import 'package:botanique/models/dtos/user/user_dto.dart';
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
      ServerConfirmsUpdate.name => ServerConfirmsUpdate.fromJson(json),
      ServerRejectsWrongCredentials.name => ServerRejectsWrongCredentials.fromJson(json),
      ServerRespondsUserAlreadyExists.name => ServerRespondsUserAlreadyExists.fromJson(json),
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
  const factory ServerConfirmsUpdate({
    GetUserDto? getUserDto
  }) = _ServerConfirmsUpdate;

  factory ServerConfirmsUpdate.fromJson(Map<String, dynamic> json) =>
      _$ServerConfirmsUpdateFromJson(json);
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
class ServerRejectsWrongCredentials extends ServerEvent
    with _$ServerRejectsWrongCredentials {
  static const String name = "ServerRejectsWrongCredentials";
  const factory ServerRejectsWrongCredentials() = _ServerRejectsWrongCredentials;

  factory ServerRejectsWrongCredentials.fromJson(Map<String, dynamic> json) =>
      _$ServerRejectsWrongCredentialsFromJson(json);
}

@freezed
class ServerRespondsUserAlreadyExists extends ServerEvent
    with _$ServerRespondsUserAlreadyExists{
  static const String name = "ServerRespondsUserAlreadyExists";

  const factory ServerRespondsUserAlreadyExists({
    required String error,
  }) = _ServerRespondsUserAlreadyExists;

  factory ServerRespondsUserAlreadyExists.fromJson(Map<String, dynamic> json) =>
      _$ServerRespondsUserAlreadyExistsFromJson(json);
}
