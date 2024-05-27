import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class XFileConverter {
  static XFile fromBase64(String base64String) {
    var tempDir = Directory.systemTemp;
    var tempFile = File(
        '${tempDir.path}/image.jpeg'); // Change 'jpeg' to the actual image type
    tempFile.writeAsBytesSync(base64Decode(base64String));
    return XFile(tempFile.path);
  }

  static String toBase64(XFile xFile) {
    return base64Encode(File(xFile.path).readAsBytesSync());
  }

  static String toBase64FromFilePath(String filePath) {
    return base64Encode(File(filePath).readAsBytesSync());
  }
}
