import 'package:camera/camera.dart';

// TODO: dispose camera controller
class CameraRepository {
  final List<String> _audioExceptions = [
    "AudioAccessDenied",
    "AudioAccessDeniedWithoutPrompt",
    "AudioAccessRestricted"
  ];

  Future<bool> requestCameraAccess() async {
    final cameras = await availableCameras();
    final CameraController cameraController = CameraController(
      cameras.first,
      ResolutionPreset.medium,
    );

    try {
      cameraController.initialize().then((value) => null);
    } catch (e) {
      if (e is CameraException && _audioExceptions.contains(e.code)) {
        // We don't care about audio permissions
        return true;
      }

      print(e);
      return false;
    }

    return true;
  }
}
