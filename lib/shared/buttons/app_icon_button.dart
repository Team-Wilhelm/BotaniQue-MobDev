import 'package:flutter/material.dart';

import '../../models/enums/app_enums.dart';
import 'app_button_base.dart';

class AppIconButton extends StatelessWidget with AppButtonBase {
  const AppIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.disabled = false,
    this.buttonType = ButtonType.primary,
    this.buttonShape = ButtonShape.round,
    this.size = 24.0,
    this.tooltip,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final bool disabled;
  final ButtonType buttonType;
  final ButtonShape buttonShape;
  final double size;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size,
      style: styleButton(
        context: context,
        buttonType: buttonType,
        buttonShape: buttonShape,
        disabled: disabled,
      ),
      tooltip: tooltip,
      onPressed: disabled ? null : onPressed,
      icon: Icon(
        icon,
        color: getContentColor(buttonType, disabled),
      ),
    );
  }
}
