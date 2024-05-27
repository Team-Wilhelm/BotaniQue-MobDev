import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/image_update_screen.dart';
import 'package:botanique/settings/other_section.dart';
import 'package:botanique/settings/profile_settings_banner.dart';
import 'package:botanique/settings/settings_screen_padding.dart';
import 'package:botanique/settings/settings_section.dart';
import 'package:botanique/shared/app_card.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/dtos/user/user_dto.dart';

import '../shared/app_snackbar.dart';
import '../util/content_size_helper.dart';
import 'about_wilhelmina.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double diameter = ContentSizeHelper.getContentWidth(context) * 0.25;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocListener<WebSocketBloc, ServerEvent>(
        listener: (context, serverEvent) {
          _handleServerResponse(context, serverEvent);
        },
        child: BlocBuilder<UserCubit, UserCubitState>(
          builder: (context, userState) {
            return ListView(
              children: [
                ProfileSettingsBanner(
                    diameter: diameter,
                    onEditTapped: () {
                      _handleOnImageEditTapped(context);
                    }),
                SizedBox(height: diameter * 0.55),
                SettingsScreenContentMargin(
                  child: Column(
                    children: [
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
                      _buildStatsCard(diameter, userState.stats),
                      spacerDouble,
                      SettingsSection(
                        diameter: diameter,
                      ),
                      spacer,
                      const OtherSettingsSection(),
                    ],
                  ),
                ),
                spacerDouble,
                const AboutWilhelmina(),
                spacerDouble,
              ],
            );
          },
        ),
      ),
    );
  }

  void _handleServerResponse(BuildContext context, ServerEvent serverEvent) {
    if (serverEvent is ServerConfirmsUpdateUsername) {
      context.read<UserCubit>().updateUsername(serverEvent.username);
      AppSnackbar(context).showSuccess("Username updated!");
    } else if (serverEvent is ServerConfirmsUpdatePassword) {
      AppSnackbar(context).showSuccess("Password updated!");
    } else if (serverEvent is ServerConfirmsProfileImageUpdate) {
      context.read<UserCubit>().updateBlobUrl(serverEvent.blobUrl);
      AppSnackbar(context).showSuccess("Profile image updated updated!");
    } else if (serverEvent is ServerConfirmsDeleteProfileImage) {
      context.read<UserCubit>().deleteBlobUrl();
      AppSnackbar(context).showSuccess("Profile image set to default!");
    } else if (serverEvent is ServerRejectsUpdate) {
      AppSnackbar(context).showError(serverEvent.error);
    }
  }

  /* Methods */
  void _handleOnImageEditTapped(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const ImageUpdateScreen();
    }));
  }

/* Widgets */
  Widget _buildStatsCard(double diameter, Stats stats) {
    return AppCard(
      applyGradient: true,
      color: AppColors.primary[0]!,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: diameter * 0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatsColumn(stats.totalPlants.toString(), "Plants"),
            _buildStatsColumn(stats.happyPlants.toString(), "Happy plants"),
            _buildStatsColumn(stats.collections.toString(), "Collections"),
          ],
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
            const Icon(Icons.numbers, color: TextColors.textLight),
            AppText(text: number, colour: TextColors.textLight),
          ],
        ),
        const SizedBox(height: 4),
        AppText(text: text, colour: TextColors.textLight),
      ],
    );
  }
}
