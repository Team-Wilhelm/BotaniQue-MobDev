import 'package:flutter/material.dart';

import '../style/app_style.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.color = AppColors.cardBackground,
    this.border,
    this.applyGradient = false,
    this.height,
    this.width,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });

  final Widget child;
  final Color color;
  final Border? border;
  final bool applyGradient;
  final double? height;
  final double? width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: border,
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: TextColors.textSecondary.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      height: height,
      width: width,
      child: child,
    );
  }

  get gradient => applyGradient
      ? LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          colors: [
            color,
            color.withOpacity(0.8),
            color.withOpacity(0.7),
            color.withOpacity(0.8),
            color,
          ],
        )
      : null;
}
