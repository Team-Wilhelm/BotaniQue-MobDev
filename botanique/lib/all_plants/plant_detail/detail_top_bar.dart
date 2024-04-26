import 'package:flutter/material.dart';

import '../../shared/app_text.dart';
import '../../style/app_style.dart';

class PlantDetailTopBar extends StatelessWidget {
  const PlantDetailTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: TextColors.textDark,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const AppText(
          text: "Plant Detail",
          fontSize: TextSizes.h5,
          fontWeight: FontWeight.bold,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          color: TextColors.textDark,
        ),
      ],
    );
  }
}
