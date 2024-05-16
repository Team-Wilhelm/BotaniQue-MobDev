import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/app_style.dart';

class PlantCardStat extends StatelessWidget {
  const PlantCardStat({
    super.key,
    required this.statImage,
    this.imageSize = 26,
    this.color = TextColors.textDark,
  });

  final String statImage;
  final double imageSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      statImage,
      width: imageSize,
      height: imageSize,
      fit: BoxFit.contain,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }
}
