import 'package:flutter/material.dart';

import '../shared/app_card.dart';
import '../shared/app_text.dart';
import '../style/app_style.dart';
import 'panel_content/panel_item.dart';

class AppExpansionTile extends StatelessWidget {
  const AppExpansionTile({
    super.key,
    required this.item,
    required this.diameter,
    required this.tileToggleCallback,
  });

  final PanelItem item;
  final double diameter;
  final Function(int) tileToggleCallback;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      border: Border.all(
        color: AppColors.cardBackground.withOpacity(0.7),
        width: 2,
      ),
      color: AppColors.background,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          listTileTheme: const ListTileThemeData(dense: true),
        ),
        child: ExpansionTile(
          controller: item.controller,
          childrenPadding: EdgeInsets.symmetric(
            horizontal: diameter * 0.16,
            vertical: diameter * 0.08,
          ),
          initiallyExpanded: false,
          iconColor: TextColors.textDark,
          leading: item.leadingIcon,
          title: Row(
            children: [
              AppText(
                text: item.headerValue,
                fontSize: FontSizes.h6,
              ),
            ],
          ),
          onExpansionChanged: (bool expanded) {
            tileToggleCallback(item.id);
          },
          children: [
            item.panelContent,
          ],
        ),
      ),
    );
  }
}
