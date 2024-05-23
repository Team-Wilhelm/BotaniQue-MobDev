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
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.primary[0]!,
            AppColors.primary[0]!.withOpacity(0.8),
            AppColors.primary[0]!.withOpacity(0.7),
            AppColors.primary[0]!.withOpacity(0.8),
            AppColors.primary[0]!,
          ],
        ),
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: TextColors.textSecondary.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
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
