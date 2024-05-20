import 'package:botanique/models/events/server_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models/plant.dart';
import '../../shared/app_image_preview.dart';
import '../../shared/app_text.dart';
import '../../shared/image_choice_dialog.dart';
import '../../state/add_plant/add_plant_cubit.dart';
import '../../state/web_socket_bloc.dart';
import '../../style/app_style.dart';
import '../../util/asset_constants.dart';
import '../../util/xfile_converter.dart';

class AddPlantSecondStepContent extends StatelessWidget {
  const AddPlantSecondStepContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebSocketBloc, ServerEvent>(
      listener: (context, state) {
        if (state is ServerSendsImageWithoutBackground) {
          context
              .read<AddPlantCubit>()
              .setPlantPicture(XFileConverter.fromBase64(state.base64Image));
        }
      },
      child: BlocBuilder<AddPlantCubit, AddPlantState>(
        builder: (context, snapshot) {
          if (snapshot is PlantToEditSelected) {
            return _displayPlantToEditPicture(context, snapshot.plant);
          }

          if (snapshot is InitialNoPictureSelected ||
              snapshot is NoPictureSelected) {
            return _getNoPictureScreen(context, snapshot);
          } else if (snapshot is PictureReady) {
            return _getPictureReadyScreen(context, snapshot);
          } else {
            if (snapshot is PictureSelected) {
              context.read<AddPlantCubit>().removePictureBackground(
                  context.read<WebSocketBloc>(), snapshot.image);
            }

            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }

  Widget _getNoPictureScreen(BuildContext context, AddPlantState snapshot) {
    return Column(
      children: [
        AppText(text: _getNoPictureTitle(snapshot)),
        AppText(
          text: _getNoPictureSubtitle(snapshot),
          fontSize: FontSizes.tiny,
        ),
        const SizedBox(height: 16),
        AppImagePreview(
          imageUrl: NetworkConstants.plantPlaceholder,
          hasCameraOverlay: snapshot is InitialNoPictureSelected,
          onTap: () {
            ImageChoiceDialog(
              title: "How would you like to add a photo of your plant?",
              cubit: context.read<AddPlantCubit>(),
            ).show(context: context);
          },
        ),
        if (snapshot is NoPictureSelected) ...[
          const SizedBox(height: 8),
          const AppText(
            text: "Want to try again? Click on the image!",
            fontSize: FontSizes.tiny,
          ),
        ],
      ],
    );
  }

  Widget _getPictureReadyScreen(BuildContext context, PictureReady snapshot) {
    return Column(
      children: [
        const AppText(text: "Here's your plant!"),
        const SizedBox(height: 8),
        AppImagePreview(
          imageUrl: snapshot.image.path,
          hasCameraOverlay: false,
          imageType: ImageType.file,
          onTap: () {
            ImageChoiceDialog(
              title: "How would you like to add a photo of your plant?",
              cubit: context.read<AddPlantCubit>(),
            ).show(context: context);
          },
        ),
        const SizedBox(height: 8),
        const AppText(
          text: "Want to try again? Click on the image!",
          fontSize: FontSizes.tiny,
        ),
      ],
    );
  }

  Widget _displayPlantToEditPicture(BuildContext context, Plant plantToEdit) {
    return Column(
      children: [
        const AppText(text: "Here's your plant!"),
        const SizedBox(height: 8),
        AppImagePreview(
          imageUrl: plantToEdit.imageUrl,
          hasCameraOverlay: false,
          imageType: ImageType.network,
          onTap: () {
            ImageChoiceDialog(
              title: "How would you like to add a photo of your plant?",
              cubit: context.read<AddPlantCubit>(),
            ).show(context: context);
          },
        ),
        const SizedBox(height: 8),
        const AppText(
          text: "Want to select a different one? Click on the image!",
          fontSize: FontSizes.tiny,
        ),
      ],
    );
  }

  String _getNoPictureTitle(AddPlantState snapshot) {
    if (snapshot is InitialNoPictureSelected) {
      return "Add a photo of your plant";
    } else {
      return "We couldn't get a photo of your plant😿";
    }
  }

  String _getNoPictureSubtitle(AddPlantState snapshot) {
    if (snapshot is InitialNoPictureSelected) {
      return "This step is optional";
    } else {
      return "That's okay though, we can use this one instead!";
    }
  }
}
