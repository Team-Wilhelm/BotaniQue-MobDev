import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: ListView(
            children: [
              CustomPaint(
                painter: CurvePainter(AppColors.primary),
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
      ),
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

class CurvePainter extends CustomPainter {
  final Color color;

  CurvePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    final width = size.width;
    final height = size.height;

    final y1 = height * 1.1;
    final x2 = width * 0.25;
    final y2 = height * 0.85;
    final x3 = width * 0.5;
    final x4 = width * 0.75;
    final y3 = height * 0.75;

    var path = Path();
    path.lineTo(0, y1);
    path.quadraticBezierTo(x2, y2, x3, y2);
    path.quadraticBezierTo(x3, y2, x4, y2);
    path.quadraticBezierTo(x4, y2, x4, y2);
    path.quadraticBezierTo(width, y2, width, y3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
