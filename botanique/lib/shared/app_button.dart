import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
  outline,
}

enum ButtonShape {
  square,
  rounded,
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonType = ButtonType.primary,
    this.buttonShape = ButtonShape.square,
    this.disabled = false,
    this.fontPercentage = TextSizes.regular,
    this.fullWidth = false,
  });

  final VoidCallback onPressed;
  final String text;
  final bool disabled;
  final ButtonType buttonType;
  final ButtonShape buttonShape;
  final double fontPercentage;
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: styleButton(context, buttonType),
        child: AppText(
          text: text,
          fontSize: fontPercentage,
          colour: textColor,
        ),
      ),
    );
  }

  ButtonStyle styleButton(BuildContext context, ButtonType buttonType) {
    Color backgroundColor;
    switch (buttonType) {
      case ButtonType.primary:
        backgroundColor = Theme.of(context).colorScheme.primary;
        break;
      case ButtonType.secondary:
        backgroundColor = Theme.of(context).colorScheme.secondary;
        break;
      case ButtonType.outline:
        backgroundColor = Colors.transparent;
        break;
    }

    if (disabled) {
      backgroundColor = backgroundColor.withOpacity(0.5);
    }

    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: buttonType == ButtonType.outline
            ? BorderSide(color: Theme.of(context).colorScheme.primary)
            : BorderSide.none,
      ),
    );
  }

  Color get textColor {
    Color textColor;
    switch (buttonType) {
      case ButtonType.primary:
        textColor = TextColors.textLight;
        break;
      case ButtonType.secondary:
        textColor = TextColors.textDark;
        break;
      case ButtonType.outline:
        textColor = AppColors.primary;
        break;
    }

    if (disabled) {
      textColor = textColor.withOpacity(0.5);
    }

    return textColor;
  }

  BorderRadius get borderRadius {
    switch (buttonShape) {
      case ButtonShape.square:
        return BorderRadius.circular(6);
      case ButtonShape.rounded:
        return BorderRadius.circular(20);
    }
  }
}
