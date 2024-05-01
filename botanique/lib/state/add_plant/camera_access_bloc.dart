import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'camera_repository.dart';

class CameraAccessBloc extends Bloc<CameraEvent, CameraState> {
  final PictureRepository pictureRepository = PictureRepository();

  CameraAccessBloc() : super(InitialNoPictureSelected()) {
    on<GetImageFromCameraRequested>((event, emit) async {
      final image = await pictureRepository.getImageFromCamera();
      if (image != null) {
        emit(PictureSelected(image: image));
      } else {
        emit(NoPictureSelected());
      }
    });

    on<GetImageFromGalleryRequested>((event, emit) async {
      final image = await pictureRepository.pickImageFromGallery();
      if (image != null) {
        emit(PictureSelected(image: image));
      } else {
        emit(NoPictureSelected());
      }
    });

    on<PictureBackgroundRemovalRequested>((event, emit) async {
      emit(PictureBackgroundRemovalInProgress());
    });

    on<PictureBackgroundRemovalSuccess>((event, emit) async {
      emit(PictureReady(image: event.image));
    });
  }
}

abstract class CameraEvent {}

// Events that can be triggered by the user
class GetImageFromCameraRequested extends CameraEvent {}

class GetImageFromGalleryRequested extends CameraEvent {}

class PictureBackgroundRemovalRequested extends CameraEvent {}

class PictureBackgroundRemovalSuccess extends CameraEvent {
  final XFile image;

  PictureBackgroundRemovalSuccess({required this.image});
}

// Possible outcomes
abstract class CameraState {}

class InitialNoPictureSelected extends CameraState {}

class PictureSelected extends CameraState {
  final XFile image;

  PictureSelected({required this.image});
}

class PictureBackgroundRemovalInProgress extends CameraState {}

class PictureReady extends CameraState {
  final XFile image;

  PictureReady({required this.image});
}

class NoPictureSelected extends CameraState {}
