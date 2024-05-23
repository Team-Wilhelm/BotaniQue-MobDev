import 'package:flutter/material.dart';

import '../../models/enums/app_enums.dart';
import '../../style/app_style.dart';

mixin AppButtonBase {
  ButtonStyle styleButton({
    required BuildContext context,
    required ButtonType buttonType,
    required ButtonShape buttonShape,
    required bool disabled,
  }) {
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
      elevation: MaterialStateProperty.all<double>(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: getBorderRadius(buttonShape),
          side: buttonType == ButtonType.outline
              ? BorderSide(color: AppColors.primary[20]!)
              : BorderSide.none,
        ),
      ),
    );
  }

  BorderRadius getBorderRadius(ButtonShape buttonShape) {
    switch (buttonShape) {
      case ButtonShape.square:
        return BorderRadius.circular(8);
      case ButtonShape.round:
        return BorderRadius.circular(20);
    }
  }

  Color getContentColor(ButtonType buttonType, bool disabled) {
    Color contentColor;
    switch (buttonType) {
      case ButtonType.warning:
      case ButtonType.primary:
        contentColor = TextColors.textLight;
        break;
      case ButtonType.secondary:
        contentColor = TextColors.textDark;
        break;
      case ButtonType.outline:
        contentColor = AppColors.primary[20]!;
        break;
      case ButtonType.inactive:
        contentColor = TextColors.textSecondary;
        break;
    }

    if (disabled) {
      contentColor = contentColor.withOpacity(0.5);
    }

    return contentColor;
  }
}
