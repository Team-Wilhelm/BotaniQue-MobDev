import 'package:botanique/models/models/plant.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/events/client_events.dart';
import '../../repositories/camera_repository.dart';
import '../../util/xfile_converter.dart';

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

  void removePictureBackground(WebSocketBloc webSocketBloc, XFile image) {
    webSocketBloc.add(
      ClientWantsToRemoveBackgroundFromImage(
        jwt: "jwt",
        base64Image: XFileConverter.toBase64(image),
        eventType: "ClientWantsToRemoveBackgroundFromImage",
      ),
    );
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

  void addPlant(
    WebSocketBloc webSocketBloc, {
    required CreatePlantDto createPlantDto,
  }) {
    webSocketBloc.add(ClientWantsToCreatePlant(
      createPlantDto: createPlantDto,
      jwt: "jwt",
      eventType: "ClientWantsToCreatePlant",
    ));
  }

  void updatePlant(WebSocketBloc webSocketBloc,
      {required UpdatePlantDto updatePlantDto}) {
    webSocketBloc.add(ClientWantsToUpdatePlant(
      updatePlantDto: updatePlantDto,
      jwt: "jwt",
      eventType: "ClientWantsToUpdatePlant",
    ));
  }
}

// Possible outcomes
abstract class AddPlantState {
  final bool isEditing = false;
}

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

  PlantToEditSelected({
    required this.plant,
    isEditing = true,
  });
}
