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
