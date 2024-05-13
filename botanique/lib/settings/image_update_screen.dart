import 'package:botanique/models/dtos/user/user_dto.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_snackbar.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/top_bar.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/buttons/app_button.dart';

class ImageUpdateScreen extends StatelessWidget {
  const ImageUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width * 0.8;
    return ScreenBase(
      child: Column(
        children: [
          const TopBar(title: "Update Profile Picture"),
          Expanded(
            child: BlocConsumer<WebSocketBloc, ServerEvent>(
              listener: (BuildContext context, ServerEvent state) {
                if (state is ServerConfirmsUpdate &&
                    state.getUserDto.blobUrl != null) {
                  context
                      .read<UserCubit>()
                      .updateBase64Image(state.getUserDto.blobUrl!);
                }
                if (state is ServerRejectsUpdate) {
                  AppSnackbar(context).showError("Update failed");
                  _resetState(context, state);
                }
              },
              builder: (BuildContext context, ServerEvent state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppText(text: "Tap to edit"),
                    spacer,
                    ClipOval(
                      // TODO add onTap to open image picker
                      child: Image.network(
                          context.read<UserCubit>().state.base64Image ?? "",
                          width: imageSize,
                          height: imageSize,
                          errorBuilder: (context, error, stackTrace) {
                        return Image.asset(AssetConstants.profile,
                            width: imageSize,
                            height: imageSize,
                            fit: BoxFit.cover);
                      }),
                    ),
                    spacer,
                    AppButton(
                      onPressed: () {
                        context.read<WebSocketBloc>().add(
                            ClientWantsToUpdateProfile(
                                jwt: "",
                                eventType: "ClientWantsToUpdateProfile",
                                userDto: UserDto(base64Image: "")));
                        context.read<UserCubit>().deleteBase64Image();
                      },
                      text: "Delete",
                    ),
                    SizedBox(height: imageSize * 0.3),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _resetState(BuildContext context, ServerRejectsUpdate state) {
    context.read<UserCubit>().updateBase64Image(state.getUserDto.blobUrl!);
  }
}
