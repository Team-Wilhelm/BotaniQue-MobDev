import 'package:botanique/util/content_size_helper.dart';
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
    return Padding(
      padding: ContentSizeHelper.getSettingsContentPadding(context)
          .copyWith(bottom: diameter * 0.08),
      child: AppCard(
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            controller: item.controller,
            childrenPadding: EdgeInsets.symmetric(
                horizontal: diameter * 0.16, vertical: diameter * 0.08),
            initiallyExpanded: false,
            iconColor: AppColors.accent,
            title: AppText(
              text: item.headerValue,
              fontSize: FontSizes.h6,
              fontWeight: FontWeight.bold,
            ),
            onExpansionChanged: (bool expanded) {
              tileToggleCallback(item.id);
            },
            children: [
              item.panelContent,
            ],
          ),
        ),
      ),
    );
  }
}
