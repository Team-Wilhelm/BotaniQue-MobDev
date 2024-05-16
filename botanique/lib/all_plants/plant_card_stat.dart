import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlantCardStat extends StatelessWidget {
  const PlantCardStat({
    super.key,
    required this.statImage,
  });

  final String statImage;
  final double _imageSize = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: SvgPicture.asset(
        statImage,
        width: _imageSize,
        height: _imageSize,
        fit: BoxFit.contain,
      ),
    );
  }
}
