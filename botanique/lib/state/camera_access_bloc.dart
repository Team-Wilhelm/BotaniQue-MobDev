import 'package:flutter_bloc/flutter_bloc.dart';

import 'camera_repository.dart';

class CameraAccessBloc extends Bloc<CameraAccessEvent, CameraAccessState> {
  final CameraRepository cameraRepository = CameraRepository();

  CameraAccessBloc() : super(CameraAccessDenied()) {
    on<CameraAccessRequested>((event, emit) async {
      final bool accessGranted = await cameraRepository.requestCameraAccess();

      if (accessGranted) {
        emit(CameraAccessGranted());
      } else {
        emit(CameraAccessDenied());
      }
    });
  }
}

abstract class CameraAccessEvent {}

// Events that can be triggered by the user
class CameraAccessRequested extends CameraAccessEvent {}

// Possible outcomes of the dialog
abstract class CameraAccessState {}

class CameraAccessGranted extends CameraAccessState {}

class CameraAccessDenied extends CameraAccessState {}
