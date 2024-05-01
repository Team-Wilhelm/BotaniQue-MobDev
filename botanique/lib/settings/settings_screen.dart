import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/app_style.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int openPanelId = -1; // Ensure this starts with a neutral value.

  @override
  Widget build(BuildContext context) {
    List<PanelItem> items = <PanelItem>[
      PanelItem(
          id: 1,
          headerValue: 'Username',
          expandedValue: 'Change your username here'),
      PanelItem(
          id: 2,
          headerValue: 'Password',
          expandedValue: 'Change your password here'),
      PanelItem(
          id: 3,
          headerValue: 'Profile Picture',
          expandedValue: 'Update your profile picture here'),
    ];

    return ScreenBase(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AppText(
                text: "Settings",
                fontSize: TextSizes.h1,
                fontWeight: FontWeight.bold),
            spacer,
            ...items.map((item) => _buildExpansionTile(item)).toList(),
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
          tilePadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          initiallyExpanded: item.id == openPanelId,
          key: PageStorageKey<int>(item.id),
          iconColor: AppColors.accent,
          title: AppText(
              text: item.headerValue,
              fontSize: TextSizes.h3,
              fontWeight: FontWeight.bold),
          onExpansionChanged: (bool expanded) {
            setState(() {
              if (expanded) {
                openPanelId = item.id;
              } else if (openPanelId == item.id) {
                openPanelId = -1;
              }
            });
          },
          children: [
            ListTile(
              title: AppText(text: item.expandedValue),
              subtitle: const AppText(text: 'Tap to edit'),
              onTap: () {
                // Additional actions can be triggered here.
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PanelItem {
  int id; // Unique identifier, used for handling expansion state
  String headerValue;
  String expandedValue;

  PanelItem({
    required this.id,
    required this.headerValue,
    required this.expandedValue,
  });
}


