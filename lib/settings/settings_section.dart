import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../shared/app_snackbar.dart';
import '../shared/app_text.dart';
import '../shared/app_text_field.dart';
import '../shared/buttons/app_button.dart';
import '../state/web_socket_bloc.dart';
import '../style/app_style.dart';
import 'app_expansion_tile.dart';
import 'panel_content/panel_item.dart';

class SettingsSection extends StatefulWidget {
  const SettingsSection({
    super.key,
    required this.diameter,
  });

  final double diameter;

  @override
  State<SettingsSection> createState() => _SettingsSectionState();
}

class _SettingsSectionState extends State<SettingsSection> {
  int openPanelId = -1;
  late List<PanelItem> panelItems;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatController =
      TextEditingController();

  @override
  void initState() {
    _buildPanelItems();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppText(
          text: "User Settings",
          fontSize: FontSizes.h5,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            ...panelItems.map(
              (item) => Column(
                children: [
                  AppExpansionTile(
                    item: item,
                    diameter: widget.diameter,
                    tileToggleCallback: _handleTileToggle,
                  ),
                  const SizedBox(height: 6),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<PanelItem> _buildPanelItems() {
    return panelItems = <PanelItem>[
      PanelItem(
        id: 1,
        leadingIcon: const Icon(
          Icons.person,
          color: TextColors.textDark,
        ),
        headerValue: 'Username',
        controller: ExpansionTileController(),
        panelContent: Column(
          children: [
            AppTextField(
              textFieldController: _usernameController,
              placeholder: "Enter new username",
              prefixIcon: const Icon(Icons.person),
            ),
            spacer,
            AppButton(
              onPressed: () {
                if (_usernameController.text.isNotEmpty &&
                    _usernameController.text.length <= 51) {
                  _handleUpdateUsername(_usernameController);
                  _handleTileToggle(1);
                } else {
                  AppSnackbar(context)
                      .showError("Can't be empty or exceed 50 characters");
                }
              },
              text: "Save",
            )
          ],
        ),
      ),
      PanelItem(
        id: 2,
        headerValue: 'Password',
        leadingIcon: const Icon(Icons.lock, color: TextColors.textDark),
        controller: ExpansionTileController(),
        panelContent: Column(
          children: [
            AppTextField(
              textFieldController: _passwordController,
              placeholder: "Enter new password",
              prefixIcon: const Icon(Icons.password),
            ),
            spacer,
            AppTextField(
              textFieldController: _passwordRepeatController,
              placeholder: "Repeat new password",
              prefixIcon: const Icon(Icons.password),
            ),
            spacer,
            AppButton(
              onPressed: () {
                if (_passwordController.text.isEmpty ||
                    _passwordRepeatController.text.isEmpty) {
                  AppSnackbar(context).showError("Please fill in both fields");
                  return;
                } else if (_passwordController.text !=
                    _passwordRepeatController.text) {
                  AppSnackbar(context).showError("Passwords do not match");
                  return;
                } else if (_passwordController.text.length < 8 ||
                    _passwordController.text.length > 256) {
                  AppSnackbar(context)
                      .showError("Must be between 8-256 characters");
                  return;
                } else {
                  _handleUpdatePassword(_passwordController);
                  _handleTileToggle(2);
                }
              },
              text: "Save",
            )
          ],
        ),
      ),
    ];
  }

  void _handleTileToggle(int id) {
    setState(() {
      if (openPanelId == id) {
        panelItems[id - 1].controller.collapse();
        openPanelId = -1;
      } else {
        if (openPanelId > 0) {
          panelItems[openPanelId - 1].controller.collapse();
        }
        panelItems[id - 1].controller.expand();
        openPanelId = id;
      }
    });
  }

  void _handleUpdateUsername(TextEditingController controller) {
    context
        .read<WebSocketBloc>()
        .add(ClientWantsToUpdateUsername(jwt: "", username: controller.text));
    controller.clear();
  }

  void _handleUpdatePassword(TextEditingController controller) {
    context
        .read<WebSocketBloc>()
        .add(ClientWantsToUpdatePassword(jwt: "", password: controller.text));
    controller.clear();
  }
}
