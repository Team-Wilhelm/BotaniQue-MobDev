import 'package:flutter/material.dart';

import '../style/app_style.dart';
import 'app_text.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.title,
  });

  final String title;

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
            Navigator.pop(context); // TODO: Implement back navigation animation
          },
        ),
        AppText(
          text: title,
          fontSize: FontSizes.h5,
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
