import 'package:camera/camera.dart';

// TODO: dispose camera controller
class CameraRepository {
  final List<String> _audioExceptions = [
    "AudioAccessDenied",
    "AudioAccessDeniedWithoutPrompt",
    "AudioAccessRestricted"
  ];

  Future<CameraController?> requestCameraAccess() async {
    final cameras = await availableCameras();
    final CameraController cameraController = CameraController(
      cameras
          .where((element) => element.lensDirection == CameraLensDirection.back)
          .first,
      ResolutionPreset.medium,
    );

    try {
      await cameraController.initialize();
    } catch (e) {
      if (e is CameraException && _audioExceptions.contains(e.code)) {
        // We don't care about audio permissions
        return cameraController;
      }

      print(e);
      return null;
    }

    return cameraController;
  }
}
