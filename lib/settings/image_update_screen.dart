import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/enums/app_enums.dart';
import '../models/events/client_events.dart';
import '../shared/app_text.dart';
import '../shared/buttons/app_icon_button.dart';
import '../shared/image_choice_dialog.dart';
import '../shared/screen_base.dart';
import '../shared/top_bar.dart';
import '../state/user_cubit.dart';
import '../state/web_socket_bloc.dart';
import '../style/app_style.dart';
import '../util/asset_constants.dart';
import '../util/content_size_helper.dart';
import '../util/xfile_converter.dart';

class ImageUpdateScreen extends StatelessWidget {
  const ImageUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = ContentSizeHelper.getContentWidth(context) * 0.8;
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
                      child: ClipOval(
                        child: _buildImage(context, state, imageSize),
                      ),
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
                                    base64Image: XFileConverter.toBase64(
                                      context
                                          .read<UserCubit>()
                                          .state
                                          .xFileImage!,
                                    ),
                                  ),
                                );
                            context.read<UserCubit>().deleteXFileImage();
                          },
                          icon: Icons.check,
                          tooltip: "Save changes",
                          size: 48,
                        ),
                        spacer,
                        AppIconButton(
                          disabled: context
                                      .read<UserCubit>()
                                      .state
                                      .xFileImage ==
                                  null &&
                              context.read<UserCubit>().state.userDto.blobUrl ==
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
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(
      BuildContext context, UserCubitState state, double imageSize) {
    if (state.xFileImage != null) {
      return Image.file(
        File(state.xFileImage!.path),
        width: imageSize,
        height: imageSize,
        fit: BoxFit.cover,
      );
    } else if (state.userDto.blobUrl != null) {
      return Image.network(
        state.userDto.blobUrl!,
        width: imageSize,
        height: imageSize,
        fit: BoxFit.cover,
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return Image.asset(
            AssetConstants.profile,
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
          );
        },
      );
    } else {
      return Image.asset(
        AssetConstants.profile,
        width: imageSize,
        height: imageSize,
        fit: BoxFit.cover,
      );
    }
  }
}
