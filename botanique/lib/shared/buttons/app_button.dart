import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/buttons/app_button_base.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

import '../../models/enums/app_enums.dart';

class AppButton extends StatelessWidget with AppButtonBase {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonType = ButtonType.primary,
    this.buttonShape = ButtonShape.square,
    this.disabled = false,
    this.fontPercentage = FontSizes.regular,
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
        style: styleButton(
          context: context,
          buttonType: buttonType,
          buttonShape: buttonShape,
          disabled: disabled,
        ),
        child: AppText(
          text: text,
          fontSize: fontPercentage,
          colour: getContentColor(buttonType, disabled),
        ),
      ),
    );
  }
}
