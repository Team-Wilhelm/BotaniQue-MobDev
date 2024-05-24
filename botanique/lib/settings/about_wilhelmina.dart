import 'package:flutter/material.dart';

import '../shared/app_text.dart';
import '../style/app_style.dart';
import 'settings_screen_padding.dart';

class AboutWilhelmina extends StatelessWidget {
  const AboutWilhelmina({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SettingsScreenContentMargin(
          largePadding: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Divider(color: TextColors.textSecondary)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: AppText(
                  text: "About BotaniQue",
                  fontSize: FontSizes.h6,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(child: Divider(color: TextColors.textSecondary)),
            ],
          ),
        ),
        SettingsScreenContentMargin(
          child: AppText(
            text:
                "Created by Wilhelmina, an all-women development team. We believe in empowering plant lovers and promoting sustainable living through innovative technology.",
            overflow: TextOverflow.visible,
            fontSize: FontSizes.small,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
