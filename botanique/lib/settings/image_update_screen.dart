import 'dart:io';

import 'package:botanique/models/dtos/user/user_dto.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/buttons/button_style.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/top_bar.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:botanique/util/xfile_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/buttons/app_icon_button.dart';
import '../shared/image_choice_dialog.dart';

class ImageUpdateScreen extends StatelessWidget {
  const ImageUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width * 0.8;
    return ScreenBase(
      child: Column(
        children: [
          TopBar(
            onBack: () {
              context.read<UserCubit>().deleteXFileImage();
            },
            title: "Update Profile Picture",
          ),
          Expanded(
            child: BlocBuilder<UserCubit, UserCubitState>(
                builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(text: "Tap to edit"),
                  spacer,
                  GestureDetector(
                    onTap: () {
                      ImageChoiceDialog(
                        title:
                            "How do you want to update your profile picture?",
                        cubit: context.read<UserCubit>(),
                      ).show(context: context);
                    },
                    child: BlocBuilder<UserCubit, UserCubitState>(
                        builder: (context, state) {
                      return ClipOval(
                        child: _buildImage(context, state, imageSize),
                      );
                    }),
                  ),
                  spacer,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppIconButton(
                        disabled:
                            context.read<UserCubit>().state.xFileImage ==
                                null,
                        onPressed: () {
                          context.read<UserCubit>().deleteXFileImage();
                          Navigator.of(context).pop();
                        },
                        icon: Icons.cancel,
                        tooltip: "Cancel changes",
                        size: 32,
                      ),
                      spacer,
                      AppIconButton(
                        disabled:
                            context.read<UserCubit>().state.xFileImage ==
                                null,
                        onPressed: () {
                          context.read<WebSocketBloc>().add(
                              ClientWantsToUpdateProfileImage(
                                  jwt: "",
                                  base64Image: XFileConverter.toBase64(context
                                      .read<UserCubit>()
                                      .state
                                      .xFileImage!)));
                          context.read<UserCubit>().deleteXFileImage();
                        },
                        icon: Icons.check,
                        tooltip: "Save changes",
                        size: 48,
                      ),
                      spacer,
                      AppIconButton(
                        disabled:
                            context.read<UserCubit>().state.xFileImage ==
                                null,
                        onPressed: () {
                          context
                              .read<WebSocketBloc>()
                              .add(ClientWantsToDeleteProfileImage(jwt: ""));
                          context.read<UserCubit>().deleteXFileImage();
                        },
                        icon: Icons.delete,
                        buttonType: ButtonType.warning,
                        tooltip: "Delete current profile picture",
                        size: 32,
                      ),
                    ],
                  ),
                  SizedBox(height: imageSize * 0.3),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  _buildImage(BuildContext context, UserCubitState state, double imageSize) {
    if (state.xFileImage != null) {
      return Image.file(File(state.xFileImage!.path),
          width: imageSize, height: imageSize, fit: BoxFit.cover);
    } else {
      try {
        return Image.network(state.userDto.blobUrl!,
            width: imageSize, height: imageSize, fit: BoxFit.cover);
      } catch (e) {
        return Image.asset(AssetConstants.profile,
            width: imageSize, height: imageSize, fit: BoxFit.cover);
      }
    }
  }
}
