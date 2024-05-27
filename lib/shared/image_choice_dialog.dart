import 'package:botanique/state/image_action_cubit.dart';
import 'package:flutter/material.dart';

class ImageChoiceDialog {
  final String title;
  final ImageActionCubit cubit;

  ImageChoiceDialog({
    required this.title,
    required this.cubit,
  });

  Future<void> show({required BuildContext context}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                cubit.getImageFromCamera();
              },
              child: const Text("Take a photo"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                cubit.getImageFromGallery();
              },
              child: const Text("Select from gallery"),
            ),
          ],
        );
      },
    );
  }
}
