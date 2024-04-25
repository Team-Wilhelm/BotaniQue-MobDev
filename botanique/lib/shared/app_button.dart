import 'package:botanique/shared/app_text.dart';
import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonType = ButtonType.primary,
    this.disabled = false,
    this.fontPercentage = textSmall,
    this.fullWidth = false,
  });

  final VoidCallback onPressed;
  final String text;
  final bool disabled;
  final ButtonType buttonType;
  final double fontPercentage;
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: () => {},
        style: styleButton(context, buttonType),
        child: AppText(
            text: text, fontPercentage: fontPercentage, colour: textColor),
      ),
    );
  }

  ButtonStyle styleButton(BuildContext context, ButtonType buttonType) {
    Color backgroundColor;
    switch (buttonType) {
      case ButtonType.primary:
        backgroundColor = Theme.of(context).primaryColorDark;
        break;
      case ButtonType.secondary:
        backgroundColor = Theme.of(context).primaryColorLight;
        break;
    }

    if (disabled) {
      backgroundColor = backgroundColor.withOpacity(0.5);
    }

    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    );
  }

  Color get textColor {
    Color textColor;
    switch (buttonType) {
      case ButtonType.primary:
        textColor = textLight;
        break;
      case ButtonType.secondary:
        textColor = textDark;
        break;
    }

    if (disabled) {
      textColor = textColor.withOpacity(0.5);
    }

    return textColor;
  }
}
