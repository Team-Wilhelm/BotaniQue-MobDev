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
  }
}

abstract class CameraEvent {}

// Events that can be triggered by the user
class GetImageFromCameraRequested extends CameraEvent {}
class GetImageFromGalleryRequested extends CameraEvent {}

// Possible outcomes
abstract class CameraState {}

class InitialNoPictureSelected extends CameraState {}

class PictureSelected extends CameraState {
  final XFile image;

  PictureSelected({required this.image});
}

class NoPictureSelected extends CameraState {}

