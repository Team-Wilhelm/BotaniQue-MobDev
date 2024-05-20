import 'package:flutter/material.dart';

import '../../models/enums/app_enums.dart';
import '../../style/app_style.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.disabled = false,
    this.buttonType = ButtonType.primary,
    this.size = 24.0,
    this.tooltip,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final bool disabled;
  final ButtonType buttonType;
  final double size;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: styleButton(context),
      tooltip: tooltip,
      onPressed: disabled ? null : onPressed,
      icon: Icon(
        icon,
        color: iconColor,
        size: size,
      ),
    );
  }

  ButtonStyle styleButton(BuildContext context) {
    Color backgroundColor;
    switch (buttonType) {
      case ButtonType.primary:
        backgroundColor = AppColors.primary[20]!;
        break;
      case ButtonType.secondary:
        backgroundColor = Theme.of(context).colorScheme.secondary;
        break;
      case ButtonType.outline:
        backgroundColor = Colors.transparent;
        break;
      case ButtonType.inactive:
        backgroundColor = TextColors.textLight;
        break;
      case ButtonType.warning:
        backgroundColor = AppColors.error;
        break;
    }

    if (disabled) {
      backgroundColor = backgroundColor.withOpacity(0.5);
    }

    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
    );
  }

  Color get iconColor {
    if (buttonType == ButtonType.primary || buttonType == ButtonType.warning) {
      return TextColors.textLight;
    } else {
      return TextColors.textDark;
    }
  }
}
