import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/user_cubit.dart';
import '../util/asset_constants.dart';
import '../util/content_size_helper.dart';

class ProfileSettingsBanner extends StatelessWidget {
  const ProfileSettingsBanner({
    super.key,
    required this.diameter,
    required this.onEditTapped,
  });

  final double diameter;
  final VoidCallback onEditTapped;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: diameter * 1.4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetConstants.leavesSmall),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: diameter * 1.2,
          child: Container(
            height: diameter * 0.4,
            width: ContentSizeHelper.getContentWidth(context),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
          top: diameter * 0.75,
          left: ContentSizeHelper.getContentWidth(context) / 2 - diameter / 2,
          child: Container(
            width: diameter,
            height: diameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Center(
              child: BlocBuilder<UserCubit, UserCubitState>(
                  builder: (context, state) {
                return GestureDetector(
                  onTap: onEditTapped,
                  child: ClipOval(
                    child: _buildImage(context, diameter),
                  ),
                );
              }),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0 + (diameter * 0.1),
          child: Container(
            width: diameter * 0.3,
            height: diameter * 0.3,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.accent,
            ),
            child: IconButton(
              icon: const Icon(Icons.camera_alt),
              color: AppColors.background,
              onPressed: onEditTapped,
            ),
          ),
        ),
      ],
    );
  }

  _buildImage(BuildContext context, double diameter) {
    try {
      return Image.network(context.read<UserCubit>().state.userDto.blobUrl!,
          width: diameter - 6, //to allow the border to be seen
          height: diameter - 6,
          fit: BoxFit.cover);
    } catch (e) {
      return Image.asset(
        AssetConstants.profile,
        width: diameter - 6,
        height: diameter - 6,
        fit: BoxFit.cover,
      );
    }
  }
}
