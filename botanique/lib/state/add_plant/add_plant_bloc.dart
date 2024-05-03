import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../repositories/camera_repository.dart';

class AddPlantBloc extends Bloc<AddPlantEvent, AddPlantState> {
  final PictureRepository pictureRepository = PictureRepository();

  AddPlantBloc() : super(InitialNoPictureSelected()) {
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

    on<FinishPressed>((event, emit) async {
      emit(PlantAddInProgress());
    });

    on<ResetAddPlantState>((event, emit) async {
      emit(InitialNoPictureSelected());
    });
  }
}

abstract class AddPlantEvent {}

// Events that can be triggered by the user
class GetImageFromCameraRequested extends AddPlantEvent {}

class GetImageFromGalleryRequested extends AddPlantEvent {}

class PictureBackgroundRemovalRequested extends AddPlantEvent {}

class PictureBackgroundRemovalSuccess extends AddPlantEvent {
  final XFile image;

  PictureBackgroundRemovalSuccess({required this.image});
}

class FinishPressed extends AddPlantEvent {}

class ResetAddPlantState extends AddPlantEvent {}

// Possible outcomes
abstract class AddPlantState {}

class InitialNoPictureSelected extends AddPlantState {} // Initial state

class NoPictureSelected
    extends AddPlantState {} // When the user cancels the camera or gallery

class PictureSelected extends AddPlantState {
  final XFile image;

  PictureSelected({required this.image});
}

class PictureBackgroundRemovalInProgress extends AddPlantState {}

class PictureReady extends AddPlantState {
  final XFile image;

  PictureReady({required this.image});
}

class PlantAddSuccess extends AddPlantState {}

class PlantAddFailed extends AddPlantState {}

class PlantAddInProgress extends AddPlantState {}
