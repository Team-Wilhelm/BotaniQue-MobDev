import 'package:flutter/material.dart';

import '../util/content_size_helper.dart';

class ScreenBase extends StatelessWidget {
  const ScreenBase({
    super.key,
    this.showNavBar = true,
    required this.child,
  });

  final Widget child;
  final bool showNavBar;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: getEdgeInsets(
            context,
          ),
          child: child,
        ),
      ),
    );
  }

  EdgeInsets getEdgeInsets(BuildContext context) {
    double sidePadding = ContentSizeHelper.getContentWidth(context) * 0.05;
    double topPadding = ContentSizeHelper.getContentHeight(context) * 0.05;

    return EdgeInsets.fromLTRB(
      sidePadding,
      topPadding,
      sidePadding,
      0,
    );
  }
}
