import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:botanique/util/navigation_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_text.dart';
import '../state/navigation_cubit.dart';
import '../style/app_style.dart';

class HomeScreenGreeting extends StatelessWidget {
  const HomeScreenGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserCubitState>(builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Hi, ${truncateWithEllipsis(state.userDto.username ?? 'Green Thumb', 15)}",
                fontSize: FontSizes.h3,
                fontWeight: FontWeight.bold,
              ),
              const AppText(
                text: "Leaf it to us!",
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              context
                  .read<NavigationCubit>()
                  .changePage(NavigationConstants.settings);
            },
            child: _buildUserImage(context, state),
          ),
        ],
      );
    });
  }

  Widget _buildUserImage(BuildContext context, UserCubitState state) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: getImage(state.userDto.blobUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  ImageProvider getImage(String? blobUrl) {
    if (blobUrl != null) {
      return NetworkImage(blobUrl);
    } else {
      return const AssetImage(AssetConstants.profile);
    }
  }

  String truncateWithEllipsis(String text, int cutoff) {
    if (text.length <= cutoff) {
      return '$text!';
    } else {
      return '${text.substring(0, cutoff)}...';
    }
  }
}
