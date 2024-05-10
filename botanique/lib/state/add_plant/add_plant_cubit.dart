import 'package:botanique/models/models/plant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../repositories/camera_repository.dart';

class AddPlantCubit extends Cubit<AddPlantState> {
  final PictureRepository pictureRepository = PictureRepository();

  AddPlantCubit() : super(InitialNoPictureSelected());

  Future<void> getImageFromCamera() async {
    final image = await pictureRepository.getImageFromCamera();
    if (image != null) {
      emit(PictureSelected(image: image));
    } else {
      emit(NoPictureSelected());
    }
  }

  Future<void> getImageFromGallery() async {
    final image = await pictureRepository.pickImageFromGallery();
    if (image != null) {
      emit(PictureSelected(image: image));
    } else {
      emit(NoPictureSelected());
    }
  }

  void removePictureBackground() {
    emit(PictureBackgroundRemovalInProgress());
  }

  void setPlantPicture(XFile image) {
    emit(PictureReady(image: image));
  }

  void savePlant() {
    emit(PlantAddInProgress());
  }

  void resetAddPlantState() {
    emit(InitialNoPictureSelected());
  }

  void setPlantToEdit(Plant plant) {
    emit(PlantToEditSelected(plant: plant));
  }
}

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

// Plant add states
class PlantAddSuccess extends AddPlantState {}

class PlantAddFailed extends AddPlantState {}

class PlantAddInProgress extends AddPlantState {}

// Edit plant states
class PlantToEditSelected extends AddPlantState {
  final Plant plant;

  PlantToEditSelected({required this.plant});
}
