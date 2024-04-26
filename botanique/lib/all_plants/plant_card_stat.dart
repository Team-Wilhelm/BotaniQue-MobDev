import 'package:flutter/material.dart';

class PlantCardStat extends StatelessWidget {
  const PlantCardStat({
    super.key,
    required this.statImage,
    this.statValue = "10%",
  });

  final String statValue;
  final String statImage;
  final double _imageSize = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
      ),
      child: Column(
        children: [
          Image.asset(
            statImage,
            width: _imageSize,
            height: _imageSize,
          ),
        ],
      ),
    );
  }
}
