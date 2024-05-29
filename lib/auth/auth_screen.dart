import 'dart:ui' as ui;

import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_snackbar.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/navigation_cubit.dart';
import '../util/content_size_helper.dart';
import 'auth_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebSocketBloc, ServerEvent>(
      listener: (context, state) {
        if (state is ServerRejectsWrongCredentials) {
          AppSnackbar(context).showError(state.error);
        } else if (state is ServerSignsUserUp) {
          AppSnackbar(context).showSuccess("Account created successfully");
          context.read<NavigationCubit>().toggleSignUpScreen();
        }
      },
      child: FutureBuilder<ui.Image>(
        future: loadImage(AssetConstants.leavesSmall),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SafeArea(
            child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              body: BlocBuilder<NavigationCubit, NavigationState>(
                  builder: (context, navigationState) {
                return Column(
                  children: [
                    CustomPaint(
                      painter: CurvePainter(snapshot.data!),
                      child: SizedBox(
                        height:
                            ContentSizeHelper.getContentHeight(context) * 0.3,
                        width: ContentSizeHelper.getContentWidth(context),
                      ),
                    ),
                    AppText(
                      text: navigationState.isSignUpScreen
                          ? "Create an account"
                          : "Nice to see you again!",
                      fontSize: FontSizes.h2,
                      fontWeight: FontWeight.w600,
                    ),
                    AppText(
                      text: navigationState.isSignUpScreen
                          ? "Sign up to get started"
                          : "Log in to your account",
                      fontSize: FontSizes.small,
                    ),
                    Expanded(
                      child: Padding(
                        padding: getEdgeInsets(context),
                        child: AuthForm(
                          isSignUp: navigationState.isSignUpScreen,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          );
        },
      ),
    );
  }

  EdgeInsets getEdgeInsets(BuildContext context) {
    double sidePadding = ContentSizeHelper.getContentWidth(context) * 0.1;
    double topPadding = ContentSizeHelper.getContentHeight(context) * 0.05;
    double bottomPadding = ContentSizeHelper.getContentHeight(context) * 0.03;
    return EdgeInsets.fromLTRB(
        sidePadding, topPadding, sidePadding, bottomPadding);
  }
}

Future<ui.Image> loadImage(String path) async {
  final data = await rootBundle.load(path);
  final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
  final frame = await codec.getNextFrame();
  return frame.image;
}

class CurvePainter extends CustomPainter {
  final ui.Image image;

  CurvePainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;

    final canvasWidth = size.width;
    final canvasHeight = size.height;

    // x values for the end points
    final x1 = canvasWidth * 0.30;
    final x2 = canvasWidth * 0.66;

    // y values for the end points
    final y1 = canvasHeight * 0.85;
    final y2 = y1 * 1.03;

    // draw the curve
    var path = Path();
    path.lineTo(0, canvasHeight);
    path.quadraticBezierTo(x1 / 2, y1, x1, y1);
    path.quadraticBezierTo((x1 + x2) / 2, (y1 + y2) / 2, x2, y2);
    path.quadraticBezierTo(
        (x2 + canvasWidth) / 2, y2, canvasWidth, canvasHeight * 0.75);
    path.lineTo(canvasWidth, 0);
    path.lineTo(0, 0);

    canvas.clipPath(path);
    canvas.drawImageRect(
        image,
        Rect.fromLTRB(0, 0, image.width.toDouble(), image.height.toDouble()),
        Rect.fromLTRB(0, 0, canvasWidth, canvasHeight),
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
