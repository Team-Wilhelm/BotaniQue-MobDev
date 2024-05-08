import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/panel_content/text_update_panel.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    panelItems = <PanelItem>[
      PanelItem(
          id: 1,
          headerValue: 'Username',
          panelContent: TextUpdatePanel(
            textToUpdate: context.read<UpdateUserCubit>().state.username,
            placeholder: "Enter new username",
            controller: _usernameController,
            onSubmit: () {
              if (_usernameController.text.isNotEmpty &&
                  _usernameController.text.length <= 51) {
                handleSubmit(_usernameController);
              } else {
                showErrorSnackBar(
                    "Must be between 1-50 characters");
              }
            },
            icon: const Icon(Icons.person),
          ),
          controller: ExpansionTileController()),
      PanelItem(
          id: 2,
          headerValue: 'Password',
          panelContent: TextUpdatePanel(
              placeholder: "Enter new password",
              controller: _passwordController,
              icon: const Icon(Icons.visibility),
              onSubmit: () {
                if (_passwordController.text.length >= 8 &&
                    _passwordController.text.length <= 256) {
                  handleSubmit(_passwordController);
                } else {
                  showErrorSnackBar(
                      "Must be between 8-256 characters");
                }
              }),
          controller: ExpansionTileController()),
      PanelItem(
          id: 3,
          headerValue: 'Profile Picture',
          panelContent: ImageUpdateContent(
            base64image: context.read<UpdateUserCubit>().state.base64Image,
            onDelete: () {
              final cubit = context.read<UpdateUserCubit>();
              cubit
                  .updateBase64Image("default profile image url"); //TODO add me
              var updateUserDto = cubit.state;
              context.read<WebSocketBloc>().add(ClientWantsToUpdateProfile(
                  jwt: '',
                  updateUserDto: updateUserDto,
                  eventType: "ClientWantsToUpdateProfile"));
            },
          ),
          controller: ExpansionTileController()),
    ];
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: SingleChildScrollView(
        child: BlocConsumer<WebSocketBloc, ServerEvent>(
          builder: (context, state) {
            return Column(
              children: [
                const AppText(
                    text: "Settings",
                    fontSize: FontSizes.h1,
                    fontWeight: FontWeight.bold),
                spacer,
                ...panelItems.map((item) => _buildExpansionTile(item)),
                spacer,
                const AppText(
                    text: "Badges",
                    fontSize: FontSizes.h1,
                    fontWeight: FontWeight.bold),
              ],
            );
          },
          listener: (BuildContext context, ServerEvent state) {
            if (state is ServerRejectsUpdate) {
              context
                  .read<UpdateUserCubit>()
                  .updateUsername(state.getUserDto.username);
              context
                  .read<UpdateUserCubit>()
                  .updateBase64Image(state.getUserDto.blobUrl!);
              showErrorSnackBar(state.errorMessage);
            }
          },
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
          tilePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          initiallyExpanded: false,
          iconColor: AppColors.accent,
          title: AppText(
              text: item.headerValue,
              fontSize: FontSizes.h3,
              fontWeight: FontWeight.bold),
          onExpansionChanged: (bool expanded) => _handleTileToggle(item.id),
          children: [
            item.panelContent,
          ],
        ),
      ),
    );
  }

  void handleSubmit(TextEditingController controller) {
    final cubit = context.read<UpdateUserCubit>();
    cubit.updateUsername(controller.text);
    var updateUserDto = cubit.state;
    context.read<WebSocketBloc>().add(ClientWantsToUpdateProfile(
        jwt: '',
        updateUserDto: updateUserDto,
        eventType: "ClientWantsToUpdateProfile"));
    controller.clear();
  }

  void showErrorSnackBar(String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: AppText(
              text: content,
              fontSize: FontSizes.regular,
              colour: TextColors.textLight),
        ),
        backgroundColor: AppColors.error,
      ),
    );
  }
}
