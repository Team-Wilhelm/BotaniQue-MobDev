import 'package:botanique/models/dtos/auth/log_in_dto.dart';
import 'package:botanique/models/dtos/plant_dtos.dart';
import 'package:botanique/models/models/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_events.freezed.dart';
part 'client_events.g.dart';

abstract class BaseEvent {
  // String get eventType => runtimeType.toString();
}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

@freezed
abstract class ClientEventWithJwt extends ClientEvent {
  const factory ClientEventWithJwt({required String jwt}) = _ClientEventWithJwt;
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

@freezed
class ClientWantsToCheckJwtValidity extends ClientEventWithJwt with _$ClientWantsToCheckJwtValidity {
  factory ClientWantsToCheckJwtValidity({
    required String jwt,
    required String eventType,
  }) = _ClientWantsToCheckJwtValidity;

  factory ClientWantsToCheckJwtValidity.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToCheckJwtValidityFromJson(json);
}

@freezed 
class ClientWantsToLogOutDto extends ClientEvent with _$ClientWantsToLogOutDto {
  factory ClientWantsToLogOutDto({
    required String email,
    required String eventType,
  }) = _ClientWantsToLogOutDto;

  factory ClientWantsToLogOutDto.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToLogOutDtoFromJson(json);
}

/* @freezed TODO
class ClientWantsToSignUp extends ClientEvent with _$ClientWantsToSignUp {
  factory ClientWantsToSignUp({
    required RegisterUserDto registerUserDto,
    required String eventType,
  }) = _ClientWantsToSignUp;

  factory ClientWantsToSignUp.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToSignUpFromJson(json);
} */

@freezed
class ClientWantsPlantById extends ClientEventWithJwt with _$ClientWantsPlantById {
factory ClientWantsPlantById({
    required String jwt,
    required String eventType,
    required Uuid plantId,
  }) = _ClientWantsPlantById;

  factory ClientWantsPlantById.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsPlantByIdFromJson(json);
}

@freezed
class ClientWantsAllPlantsDto extends ClientEventWithJwt with _$ClientWantsAllPlantsDto {
  factory ClientWantsAllPlantsDto({
    required String jwt,
    required String eventType,
    required int pageNumber,
    required int pageSize,
  }) = _ClientWantsAllPlantsDto;

  factory ClientWantsAllPlantsDto.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsAllPlantsDtoFromJson(json);
}

@freezed
class ClientWantsToDeletePlantDto extends ClientEventWithJwt with _$ClientWantsToDeletePlantDto {
  factory ClientWantsToDeletePlantDto({
    required String jwt,
    required String eventType,
    required Uuid plantId,
  }) = _ClientWantsToDeletePlantDto;

  factory ClientWantsToDeletePlantDto.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToDeletePlantDtoFromJson(json);
}

@freezed
class ClientWantsToUpdatePlant extends ClientEventWithJwt with _$ClientWantsToUpdatePlant {
  factory ClientWantsToUpdatePlant({
    required String jwt,
    required String eventType,
    required Uuid plantId,
    required UpdatePlantDto updatePlantDto,
  }) = _ClientWantsToUpdatePlant;

  factory ClientWantsToUpdatePlant.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToUpdatePlantFromJson(json);
}

