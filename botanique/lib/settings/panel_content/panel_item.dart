import 'package:flutter/material.dart';

class PanelItem {
  int id; // Unique identifier, used for handling expansion state
  ExpansionTileController controller;
  String headerValue;
  Widget panelContent;
  Icon? leadingIcon;

  PanelItem({
    required this.id,
    required this.controller,
    required this.headerValue,
    required this.panelContent,
    this.leadingIcon,
  });
}
