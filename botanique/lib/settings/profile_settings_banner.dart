import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/user_cubit.dart';
import '../util/asset_constants.dart';

class ProfileSettingsBanner extends StatelessWidget {
  const ProfileSettingsBanner({
    super.key,
    required this.diameter,
  });

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: diameter * 1.2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetConstants.leaves),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: diameter * 0.75,
          left: MediaQuery.of(context).size.width / 2 - diameter / 2,
          child: Container(
            width: diameter,
            height: diameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3, // Ensuring the border is visible
              ),
            ),
            child: Center( // Added a Center widget to ensure the image is centered
              child: ClipOval(
                child: Image.network(
                  context.read<UpdateUserCubit>().state.base64Image ?? "",
                  width: diameter - 6, //to allow the border to be seen
                  height: diameter - 6,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      AssetConstants.profile,
                      width: diameter - 6,
                      height: diameter - 6,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
