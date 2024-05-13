import 'package:botanique/util/navigation_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_text.dart';
import '../state/navigation_cubit.dart';
import '../style/app_style.dart';

// TODO: integrate with user details
class HomeScreenGreeting extends StatelessWidget {
  const HomeScreenGreeting({super.key});

  final String name = "Name";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: "Hi, $name",
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
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://st3.depositphotos.com/6672868/13701/v/450/depositphotos_137014128-stock-illustration-user-profile-icon.jpg"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
