import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:flutter/material.dart';

import '../models/enums/app_enums.dart';
import '../style/app_style.dart';
import 'app_text.dart';

class TopBarAction {
  const TopBarAction({
    required this.text,
    required this.onPressed,
    this.icon,
  });

  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.onBack,
  });

  final String title;
  final VoidCallback? onBack;
  final List<TopBarAction>? actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppIconButton(
          icon: Icons.arrow_back_ios_new,
          buttonType: ButtonType.transparent,
          onPressed: () {
            if (onBack != null) {
              onBack!();
            }
            Navigator.pop(context);
          },
        ),
        _buildTitle(context),
        if (actions != null && actions!.isNotEmpty) _buildPopUpMenu(context),
        if (actions == null || actions!.isEmpty) const SizedBox(width: 24),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: AppText(
            text: title,
            fontSize: FontSizes.h5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildPopUpMenu(BuildContext context) {
    return PopupMenuButton<TopBarAction>(
      tooltip: "More options",
      elevation: 0,
      icon: const Icon(Icons.more_vert),
      onSelected: (action) => action.onPressed(),
      itemBuilder: (context) {
        return actions!.map((action) {
          return PopupMenuItem<TopBarAction>(
            value: action,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: action.text),
                const SizedBox(width: 8),
                if (action.icon != null)
                  Icon(action.icon, color: TextColors.textDark),
              ],
            ),
          );
        }).toList();
      },
    );
  }
}
