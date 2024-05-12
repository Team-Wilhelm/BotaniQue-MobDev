import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/panel_content/text_update_panel.dart';
import 'package:botanique/settings/profile_settings_banner.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'panel_content/panel_item.dart';

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
            placeholder: "Enter new username",
            controller: _usernameController,
            onSubmit: () {
              if (_usernameController.text.isNotEmpty &&
                  _usernameController.text.length <= 51) {
                _handleSubmit(_usernameController);
                _handleTileToggle(1);
              } else {
                _showErrorSnackBar("Must be between 1-50 characters");
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
                _handleSubmit(_passwordController);
                _handleTileToggle(2);
              } else {
                _showErrorSnackBar("Must be between 8-256 characters");
              }
            }),
        controller: ExpansionTileController(),
      ),
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

  //TODO get data for stats
  //TODO deal with collections CRUD
  //TODO implement image update/delete

  @override
  Widget build(BuildContext context) {
    final double diameter = MediaQuery.of(context).size.width * 0.25;

    return Scaffold(
        body: BlocConsumer<WebSocketBloc, ServerEvent>(
      listener: (context, state) {
        if (state is ServerRejectsUpdate) {
          _showErrorSnackBar(state.error);
        }
      },
      builder: (context, state) {
        return ListView(
          children: [
            ProfileSettingsBanner(diameter: diameter),
            SizedBox(height: diameter * 0.55),
            AppText(
                text: context.read<UpdateUserCubit>().state.username ??
                    "My Profile",
                textAlign: TextAlign.center,
                fontSize: FontSizes.h3,
                fontWeight: FontWeight.bold),
            const AppText(
              text: "Superior plant lover!",
              textAlign: TextAlign.center,
            ),
            spacer,
            Card(
              margin: EdgeInsets.symmetric(horizontal: diameter * 0.24),
              child: Padding(
                padding: EdgeInsets.all(diameter * 0.16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatsColumn("25", "plants total"),
                    _buildStatsColumn("25", "happy plants"),
                    _buildStatsColumn("5", "collections"),
                  ],
                ),
              ),
            ),
            spacerDouble,
            const AppText(
                text: "Settings",
                textAlign: TextAlign.center,
                fontSize: FontSizes.h2,
                fontWeight: FontWeight.bold),
            spacer,
            ...panelItems.map((item) => _buildExpansionTile(item, diameter)),
            spacer,
            const AppText(
                text: "Collections",
                textAlign: TextAlign.center,
                fontSize: FontSizes.h2,
                fontWeight: FontWeight.bold),
          ],
        );
      },
    ));
  }

  Column _buildStatsColumn(String number, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.numbers, color: AppColors.accent),
            AppText(text: number),
          ],
        ),
        SizedBox(height: 4),
        AppText(text: text)
      ],
    );
  }

  Widget _buildExpansionTile(PanelItem item, double diameter) {
    return Padding(
      padding: _getSymmetricHorizontalPadding(),
      child: Card(
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            controller: item.controller,
            tilePadding: EdgeInsets.symmetric(
                horizontal: diameter * 0.24, vertical: diameter * 0.08),
            childrenPadding: EdgeInsets.symmetric(
                horizontal: diameter * 0.16, vertical: diameter * 0.08),
            initiallyExpanded: false,
            iconColor: AppColors.accent,
            title: AppText(
                text: item.headerValue,
                fontSize: FontSizes.h4,
                fontWeight: FontWeight.bold),
            onExpansionChanged: (bool expanded) => _handleTileToggle(item.id),
            children: [
              item.panelContent,
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmit(TextEditingController controller) {
    final cubit = context.read<UpdateUserCubit>();
    cubit.updateUsername(controller.text);
    var updateUserDto = cubit.state;
    context.read<WebSocketBloc>().add(ClientWantsToUpdateProfile(
        jwt: '',
        updateUserDto: updateUserDto,
        eventType: "ClientWantsToUpdateProfile"));
    controller.clear();
  }

  void _showErrorSnackBar(String content) {
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

  EdgeInsets _getSymmetricHorizontalPadding() {
    double sidePadding = MediaQuery.of(context).size.width * 0.05;
    return EdgeInsets.symmetric(
      horizontal: sidePadding,
    );
  }
}

/*onDelete: () {
final cubit = context.read<UpdateUserCubit>();
cubit
    .updateBase64Image("default profile image url"); //TODO add me
var updateUserDto = cubit.state;
context.read<WebSocketBloc>().add(ClientWantsToUpdateProfile(
jwt: '',
updateUserDto: updateUserDto,
eventType: "ClientWantsToUpdateProfile"));
}*/
