import 'package:botanique/shared/app_card.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/plant_fun_facts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../util/content_size_helper.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: AppColors.primary[0]!,
      applyGradient: true,
      height: ContentSizeHelper.getContentHeight(context) * 0.15,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            text: "Did you know?",
            fontWeight: FontWeight.bold,
            colour: TextColors.textLight,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: AppText(
                text: getRandomFact(),
                fontSize: FontSizes.h6,
                overflow: TextOverflow.visible,
                colour: TextColors.textLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
