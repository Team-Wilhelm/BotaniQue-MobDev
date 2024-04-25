import 'package:flutter/material.dart';

import '../shared/app_text.dart';

class PlantCardStat extends StatelessWidget {
  const PlantCardStat({
    super.key,
    required this.statImage,
    this.statValue = "10%",
  });

  final String statValue;
  final String statImage;
  final double _imageSize = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: _imageSize,
          height: _imageSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.surface,
            image: DecorationImage(
              image: AssetImage(statImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        AppText(
          text: statValue,
          fontPercentage: 30,
        ),
      ],
    );
  }
}
