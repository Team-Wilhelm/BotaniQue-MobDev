import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

import '../models/models/plant.dart';

class NeedSomeLoveRow extends StatelessWidget {
  const NeedSomeLoveRow({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                plant.imageUrl,
                fit: BoxFit.cover,
                height: getImageSize(context),
                width: getImageSize(context),
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: plant.nickname,
                    fontSize: FontSizes.h5,
                    colour: TextColors.textDark,
                  ),
                  const AppText(
                    text: "Im dying",
                    colour: TextColors.textDark,
                  ),
                ],
              ),
            ],
          ),
          const AppText(
            text: "😢",
            fontSize: FontSizes.h2,
          ),
        ],
      ),
    );
  }

  double getImageSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.15;
  }
}
