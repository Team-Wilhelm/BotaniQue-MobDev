import 'package:botanique/models/dtos/user/user_dto.dart';
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
    return BlocBuilder<UserCubit, UserDto>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Hi, ${state.username ?? 'green thumb'}!",
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

  Widget _buildUserImage(BuildContext context, UserDto state) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          image: AssetImage(AssetConstants
              .profile), // TODO: conditional access to the user image when it's available
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
