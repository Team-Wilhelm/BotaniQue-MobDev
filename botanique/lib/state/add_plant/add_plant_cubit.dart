import 'package:botanique/models/models/plant.dart';
import 'package:botanique/state/image_action_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/events/client_events.dart';
import '../../repositories/camera_repository.dart';
import '../../util/xfile_converter.dart';

class AddPlantCubit extends Cubit<AddPlantState> implements ImageActionCubit {
  final PictureRepository pictureRepository = PictureRepository();

  AddPlantCubit() : super(InitialNoPictureSelected());

  @override
  Future<void> getImageFromCamera() async {
    final image = await pictureRepository.getImageFromCamera(CameraDevice.rear);
    if (image != null) {
      emit(PictureSelected(image: image));
    } else {
      emit(NoPictureSelected());
    }
  }

  @override
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
    ));
  }

  void updatePlant(WebSocketBloc webSocketBloc,
      {required UpdatePlantDto updatePlantDto}) {
    webSocketBloc.add(ClientWantsToUpdatePlant(
      updatePlantDto: updatePlantDto,
      jwt: "jwt",
    ));
  }

  void setPlaceholderSasUrl(String sasUrl) {
    emit(state.copyWith(placeHolderUrl: sasUrl));
  }
}

// Possible outcomes
abstract class AddPlantState {
  final bool isEditing;
  String placeHolderUrl;

  AddPlantState({
    this.isEditing = false,
    this.placeHolderUrl = NetworkConstants.plantPlaceholder,
  });

  AddPlantState copyWith({
    bool? isEditing,
    String? placeHolderUrl,
  });
}

class InitialNoPictureSelected extends AddPlantState {
  InitialNoPictureSelected({
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  InitialNoPictureSelected copyWith({
    bool? isEditing,
    String? placeHolderUrl,
  }) {
    return InitialNoPictureSelected(
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

class NoPictureSelected extends AddPlantState {
  NoPictureSelected({
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  NoPictureSelected copyWith({
    bool? isEditing,
    String? placeHolderUrl,
  }) {
    return NoPictureSelected(
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
} // When the user cancels the camera or gallery

class PictureSelected extends AddPlantState {
  final XFile image;

  PictureSelected({
    required this.image,
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  PictureSelected copyWith({
    bool? isEditing,
    String? placeHolderUrl,
    XFile? image,
  }) {
    return PictureSelected(
      image: image ?? this.image,
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

class PictureBackgroundRemovalInProgress extends AddPlantState {
  PictureBackgroundRemovalInProgress({
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  PictureBackgroundRemovalInProgress copyWith({
    bool? isEditing,
    String? placeHolderUrl,
  }) {
    return PictureBackgroundRemovalInProgress(
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

class PictureReady extends AddPlantState {
  final XFile image;

  PictureReady({required this.image, super.isEditing, super.placeHolderUrl});

  @override
  PictureReady copyWith({
    bool? isEditing,
    String? placeHolderUrl,
    XFile? image,
  }) {
    return PictureReady(
      image: image ?? this.image,
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

// Plant add states
class PlantAddSuccess extends AddPlantState {
  final Plant plant;

  PlantAddSuccess({
    required this.plant,
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  PlantAddSuccess copyWith({
    bool? isEditing,
    String? placeHolderUrl,
    Plant? plant,
  }) {
    return PlantAddSuccess(
      plant: plant ?? this.plant,
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

class PlantAddFailed extends AddPlantState {
  PlantAddFailed({
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  PlantAddFailed copyWith({
    bool? isEditing,
    String? placeHolderUrl,
  }) {
    return PlantAddFailed(
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

class PlantAddInProgress extends AddPlantState {
  PlantAddInProgress({
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  PlantAddInProgress copyWith({
    bool? isEditing,
    String? placeHolderUrl,
  }) {
    return PlantAddInProgress(
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}

// Edit plant states
class PlantToEditSelected extends AddPlantState {
  final Plant plant;

  PlantToEditSelected({
    required this.plant,
    super.isEditing,
    super.placeHolderUrl,
  });

  @override
  PlantToEditSelected copyWith({
    bool? isEditing,
    String? placeHolderUrl,
    Plant? plant,
  }) {
    return PlantToEditSelected(
      plant: plant ?? this.plant,
      isEditing: isEditing ?? this.isEditing,
      placeHolderUrl: placeHolderUrl ?? this.placeHolderUrl,
    );
  }
}
