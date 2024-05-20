import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Center(
        child: Lottie.network(
          NetworkConstants.successAnimation,
          repeat: false,
          animate: true,
        ),
      ),
    );
  }
}
