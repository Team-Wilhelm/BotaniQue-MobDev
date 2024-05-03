import 'dart:ui' as ui;

import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
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
          future: loadImage(AssetConstants.leaves),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SafeArea(
              child: Scaffold(
                backgroundColor: Theme.of(context).colorScheme.background,
                body: ListView(
                  children: [
                    CustomPaint(
                      painter: CurvePainter(snapshot.data!),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: screenWidth,
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
    paint.style = PaintingStyle.fill;

    // image scale
    final scale = size.width / image.width;

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
