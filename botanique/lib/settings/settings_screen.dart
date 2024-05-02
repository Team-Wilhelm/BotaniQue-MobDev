import 'package:botanique/settings/panel_content/text_update_panel.dart';
import 'package:flutter/material.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/app_style.dart';
import 'panel_content/panel_item.dart';
import 'panel_content/image_update_content.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int openPanelId = -1;
  late List<PanelItem> panelItems;

  @override
  void initState() {
    panelItems = <PanelItem>[
      PanelItem(
          id: 1,
          headerValue: 'Username',
          panelContent: TextUpdatePanel(
            textToUpdate: "PlantLover577",
            placeholder: "Enter new username",
            icon: const Icon(Icons.person),
            onSubmit: () {},
          ),
          controller: ExpansionTileController()),
      PanelItem(
          id: 2,
          headerValue: 'Password',
          panelContent: TextUpdatePanel(
            textToUpdate: "******",
            placeholder: "Enter new password",
            icon: const Icon(Icons.visibility),
            onSubmit: () {},
          ),
          controller: ExpansionTileController()),
      PanelItem(
          id: 3,
          headerValue: 'Profile Picture',
          panelContent: ImageUpdateContent(),
          controller: ExpansionTileController()),
    ];
    super.initState();
  }

  void _handleTileToggle(PanelItem item) {
    setState(() {
      if (openPanelId > 0) {
        panelItems.elementAt(openPanelId - 1).controller.collapse();
      }
      openPanelId = item.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AppText(
                text: "Settings",
                fontSize: TextSizes.h1,
                fontWeight: FontWeight.bold),
            spacer,
            ...panelItems.map((item) => _buildExpansionTile(item)),
            spacer,
            const AppText(
                text: "Badges",
                fontSize: TextSizes.h1,
                fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(PanelItem item) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          controller: item.controller,
          tilePadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          initiallyExpanded: false,
          iconColor: AppColors.accent,
          title: AppText(
              text: item.headerValue,
              fontSize: TextSizes.h3,
              fontWeight: FontWeight.bold),
          onExpansionChanged: (bool expanded) => _handleTileToggle(item),
          children: [
            item.panelContent,
          ],
        ),
      ),
    );
  }
}
