import 'package:botanique/shared/app_button.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageUpdateContent extends StatelessWidget {
  const ImageUpdateContent({super.key, this.base64image, required this.onDelete});

  final String? base64image;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppText(text: "Want a new look?", fontSize: FontSizes.regular),
        if (base64image != null)
          Image.network(
            base64image!,
            width: 200,
            height: 200,
          ) else const SizedBox(),//TODO add default image
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppButton(
                onPressed: () {
                  handleImageUpload();
                },
                text: "Upload"),
            AppButton(
                onPressed: onDelete,
                text: "Remove"),
          ],
        )
      ],
    );
  }

  void handleImageUpload() {}
}
