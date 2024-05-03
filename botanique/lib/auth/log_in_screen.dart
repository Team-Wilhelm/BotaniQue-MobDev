import 'dart:ui' as ui;

import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/navigation_cubit.dart';
import '../util/navigation_constants.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebSocketBloc, ServerEvent>(
      listener: (context, state) {
        if (state is ServerAuthenticatesUser) {
          context.read<NavigationCubit>().changePage(NavigationConstants.home);
        } else if (state is ServerRejectsWrongCredentials) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: AppText(
            text: state.error,
          )));
        }
      },
      child: FutureBuilder<ui.Image>(
          future: loadImage(AssetConstants.logo),
          builder: (context, snapshot) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Theme.of(context).colorScheme.background,
                body: ListView(
                  children: [
                    CustomPaint(
                      painter: CurvePainter(snapshot.data!),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    Container(),
                  ],
                ),

                /*Padding(
                padding: getEdgeInsets(context),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                      child: AppLogo(),
                    ),
                    const LogInForm(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const AppText(text: "Don't have an account?"),
                          TextButton(
                            onPressed: () => {
                              context
                                  .read<NavigationCubit>()
                                  .changePage(NavigationConstants.signUp)
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.1)),
                            ),
                            child: AppText(
                              text: "Sign Up",
                              colour: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              */
              ),
            );
          }),
    );
  }

  EdgeInsets getEdgeInsets(BuildContext context) {
    double sidePadding = MediaQuery.of(context).size.width * 0.1;
    double topPadding = MediaQuery.of(context).size.height * 0.1;
    double bottomPadding = MediaQuery.of(context).size.height * 0.05;

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
    paint.color = AppColors.primary;
    paint.style = PaintingStyle.fill;

    final width = size.width;
    final height = size.height;

    // x values for the end points
    final x1 = width * 0.25;
    final x2 = width * 0.5;
    final x3 = width * 0.75;

    // y values for the end points
    final y1 = height * 0.85;
    final y2 = height * 0.80;
    // final y3 = height * 0.85;

    // draw the curve
    var path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(x1 / 2, y1, x1, y1);
    path.quadraticBezierTo((x2 + x1) / 2, y1, x2, y1);
    path.quadraticBezierTo((x2 + x3) / 2, y1, x3, y1);
    path.quadraticBezierTo((x3 + width) / 2, y1, width, height * 0.70);
    path.lineTo(width, 0);
    path.lineTo(0, 0);

    // canvas.clipPath(path);
    // canvas.drawImage(image, Offset.zero, paint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
