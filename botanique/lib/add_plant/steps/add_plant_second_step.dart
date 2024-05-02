import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/events/client_events.dart';
import '../../shared/app_image_preview.dart';
import '../../shared/app_text.dart';
import '../../state/add_plant/add_plant_bloc.dart';
import '../../state/web_socket_bloc.dart';
import '../../style/app_style.dart';
import '../../style/asset_constants.dart';
import '../../util/xfile_converter.dart';

class AddPlantSecondStepContent extends StatelessWidget {
  const AddPlantSecondStepContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebSocketBloc, AppState>(
      listener: (context, state) {
        if (state.addPlantImage != null) {
          context.read<AddPlantBloc>().add(
              PictureBackgroundRemovalSuccess(image: state.addPlantImage!));
        }
      },
      child: BlocBuilder<AddPlantBloc, AddPlantState>(
        builder: (context, snapshot) {
          if (snapshot is InitialNoPictureSelected ||
              snapshot is NoPictureSelected) {
            return _getNoPictureScreen(context, snapshot);
          } else if (snapshot is PictureReady) {
            return _getPictureReadyScreen(context, snapshot as PictureReady);
          } else {
            if (snapshot is PictureSelected) {
              context
                  .read<AddPlantBloc>()
                  .add(PictureBackgroundRemovalRequested());
              context.read<WebSocketBloc>().add(
                    ClientWantsToRemoveBackgroundFromImage(
                      jwt: "jwt",
                      base64Image: XFileConverter.toBase64(snapshot.image),
                      eventType: "ClientWantsToRemoveBackgroundFromImage",
                    ),
                  );
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }

  Future<void> showChoiceDialog({required BuildContext context}) async {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text("How would you like to add a photo of your plant?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                context.read<AddPlantBloc>().add(GetImageFromCameraRequested());
              },
              child: const Text("Take a photo"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                context
                    .read<AddPlantBloc>()
                    .add(GetImageFromGalleryRequested());
              },
              child: const Text("Select from gallery"),
            ),
          ],
        );
      },
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
        const SizedBox(height: 8),
        AppImagePreview(
          imageUrl: NetworkConstants.plantPlaceholder,
          hasCameraOverlay: snapshot is InitialNoPictureSelected,
          onTap: () {
            showChoiceDialog(context: context);
          },
        ),
        if (snapshot is NoPictureSelected) ...[
          const SizedBox(height: 8),
          const AppText(
            text: "Wanna try again? Click on the image!",
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
            showChoiceDialog(context: context);
          },
        ),
        const SizedBox(height: 8),
        const AppText(
          text: "Wanna try again? Click on the image!",
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
