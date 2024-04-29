import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'camera_repository.dart';

class CameraAccessBloc extends Bloc<CameraEvent, CameraState> {
  final CameraRepository cameraRepository = CameraRepository();

  CameraAccessBloc() : super(CameraAccessDenied()) {
    on<CameraAccessRequested>((event, emit) async {
      final CameraController? cameraController =
          await cameraRepository.requestCameraAccess();

      if (cameraController != null) {
        emit(CameraAccessGranted(cameraController: cameraController));
      } else {
        emit(CameraAccessDenied());
      }
    });

    on<PictureButtonPressed>((event, emit) async {
      final image = await event.cameraController.takePicture();

      emit(PictureTaken(image: image));
    });
  }
}

abstract class CameraEvent {}

// Events that can be triggered by the user
class CameraAccessRequested extends CameraEvent {}

class PictureButtonPressed extends CameraEvent {
  final CameraController cameraController;

  PictureButtonPressed({required this.cameraController});
}

// Possible outcomes of the dialog
abstract class CameraState {}

class CameraAccessGranted extends CameraState {
  final CameraController cameraController;

  CameraAccessGranted({required this.cameraController});
}

class CameraAccessDenied extends CameraState {}

class PictureTaken extends CameraState {
  final XFile image;

  PictureTaken({required this.image});
}
