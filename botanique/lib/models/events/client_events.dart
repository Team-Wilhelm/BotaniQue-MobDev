import 'package:botanique/models/dtos/auth/log_in_dto.dart';
import 'package:botanique/models/dtos/create_plant_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_events.freezed.dart';
part 'client_events.g.dart';

abstract class BaseEvent {
  // String get eventType => runtimeType.toString();
}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

abstract class ClientEventWithJwt extends ClientEvent {
  final String jwt;

  ClientEventWithJwt({required this.jwt});
}

@freezed
class ClientWantsToRemoveBackgroundFromImage extends ClientEventWithJwt
    with _$ClientWantsToRemoveBackgroundFromImage {
  const factory ClientWantsToRemoveBackgroundFromImage({
    required String base64Image,
    required String jwt,
    required String eventType,
  }) = _ClientWantsToRemoveBackgroundFromImage;

  factory ClientWantsToRemoveBackgroundFromImage.fromJson(
          Map<String, dynamic> json) =>
      _$ClientWantsToRemoveBackgroundFromImageFromJson(json);
}

@freezed
class ClientWantsToCreatePlant extends ClientEventWithJwt
    with _$ClientWantsToCreatePlant {
  const factory ClientWantsToCreatePlant({
    required CreatePlantDto createPlantDto,
    required String jwt,
    required String eventType,
  }) = _ClientWantsToCreatePlant;

  factory ClientWantsToCreatePlant.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToCreatePlantFromJson(json);
}

@freezed
class ClientWantsToLogIn extends ClientEvent with _$ClientWantsToLogIn {
  factory ClientWantsToLogIn({
    required LoginDto loginDto,
    required String eventType,
  }) = _ClientWantsToLogIn;

  factory ClientWantsToLogIn.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToLogInFromJson(json);
}
