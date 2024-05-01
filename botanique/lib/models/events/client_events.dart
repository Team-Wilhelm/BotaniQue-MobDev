import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'client_events.freezed.dart';
part 'client_events.g.dart';

abstract class BaseEvent {
  String get eventType => runtimeType.toString();
}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

@freezed
class ClientWantsToRemoveBackgroundFromImage extends ClientEvent
    with _$ClientWantsToRemoveBackgroundFromImage {
  const factory ClientWantsToRemoveBackgroundFromImage({
    @XFileConverter() required XFile image,
  }) = _ClientWantsToRemoveBackgroundFromImage;

  factory ClientWantsToRemoveBackgroundFromImage.fromJson(
          Map<String, dynamic> json) =>
      _$ClientWantsToRemoveBackgroundFromImageFromJson(json);

  static XFile _fromXFile(String base64String) {
    var tempDir = Directory.systemTemp;
    var tempFile = File(
        '${tempDir.path}/image.jpeg'); // Change 'jpeg' to the actual image type
    tempFile.writeAsBytesSync(base64Decode(base64String));
    return XFile(tempFile.path);
  }

  static String _toXFile(XFile xFile) {
    return base64Encode(File(xFile.path).readAsBytesSync());
  }
}

class XFileConverter implements JsonConverter<XFile, String> {
  const XFileConverter();

  @override
  XFile fromJson(String base64String) {
    var tempDir = Directory.systemTemp;
    var tempFile = File(
        '${tempDir.path}/image.jpeg'); // Change 'jpeg' to the actual image type
    tempFile.writeAsBytesSync(base64Decode(base64String));
    return XFile(tempFile.path);
  }

  @override
  String toJson(XFile xFile) =>
      base64Encode(File(xFile.path).readAsBytesSync());
}
