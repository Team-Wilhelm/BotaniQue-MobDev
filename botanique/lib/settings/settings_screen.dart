import 'package:botanique/models/enums/app_enums.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/settings/collections/edit_collections_screen.dart';
import 'package:botanique/settings/image_update_screen.dart';
import 'package:botanique/settings/profile_settings_banner.dart';
import 'package:botanique/settings/settings_screen_padding.dart';
import 'package:botanique/settings/settings_section.dart';
import 'package:botanique/shared/app_card.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/navigation_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/buttons/app_button.dart';
import '../shared/buttons/app_icon_button.dart';
import '../util/content_size_helper.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double diameter = ContentSizeHelper.getContentWidth(context) * 0.25;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocBuilder<UserCubit, UserCubitState>(
        builder: (context, userState) {
          return ListView(
            children: [
              ProfileSettingsBanner(
                  diameter: diameter,
                  onEditTapped: () {
                    _handleOnImageEditTapped(context);
                  }),
              SizedBox(height: diameter * 0.55),
              AppText(
                text: userState.userDto.username ?? "My Profile",
                textAlign: TextAlign.center,
                fontSize: FontSizes.h3,
                fontWeight: FontWeight.bold,
              ),
              const AppText(
                text: "Superior plant lover!",
                textAlign: TextAlign.center,
              ),
              spacer,
              _buildStatsCard(diameter),
              spacerDouble,
              SettingsSection(
                diameter: diameter,
              ),
              spacer,
              SettingsScreenContentMargin(
                largePadding: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: AppButton(
                        onPressed: () {
                          _handleOnManageCollectionsTapped(context);
                        },
                        text: "Manage Collections",
                      ),
                    ),
                    spacer,
                    Expanded(
                      flex: 1,
                      child: AppIconButton(
                        onPressed: () {
                          context.read<WebSocketBloc>().add(
                                ClientWantsToLogOut(
                                  eventType: "ClientWantsToLogOut",
                                ),
                              );
                          context
                              .read<NavigationCubit>()
                              .changePage(NavigationConstants.welcome);
                        },
                        icon: Icons.logout,
                        buttonType: ButtonType.warning,
                        buttonShape: ButtonShape.square,
                      ),
                    ),
                  ],
                ),
              ),
              spacerDouble,
              const SettingsScreenContentMargin(
                largePadding: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(color: TextColors.textSecondary)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: AppText(
                        text: "About BotaniQue",
                        fontSize: FontSizes.h6,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: Divider(color: TextColors.textSecondary)),
                  ],
                ),
              ),
              const SettingsScreenContentMargin(
                child: AppText(
                  text:
                      "Created by Wilhelmina, an all-women development team. We believe in empowering plant lovers and promoting sustainable living through innovative technology.",
                  overflow: TextOverflow.visible,
                  fontSize: FontSizes.small,
                  textAlign: TextAlign.center,
                ),
              ),
              spacerDouble,
            ],
          );
        },
      ),
    );
  }

  /* Methods */
  void _handleOnImageEditTapped(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const ImageUpdateScreen();
    }));
  }

  void _handleOnManageCollectionsTapped(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return EditCollectionsScreen();
    }));
  }

  /* Widgets */
  Widget _buildStatsCard(double diameter) {
    return SettingsScreenContentMargin(
      child: AppCard(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: diameter * 0.08),
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
    );
  }

  Column _buildStatsColumn(String number, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.numbers, color: AppColors.accent),
            AppText(text: number),
          ],
        ),
        const SizedBox(height: 4),
        AppText(text: text)
      ],
    );
  }
}
