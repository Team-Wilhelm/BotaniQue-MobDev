import 'package:botanique/util/content_size_helper.dart';
import 'package:flutter/material.dart';

class SettingsScreenContentMargin extends StatelessWidget {
  const SettingsScreenContentMargin({
    super.key,
    required this.child,
    this.largePadding = false,
  });

  final Widget child;
  final bool largePadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: largePadding
          ? _getLargerSymmetricHorizontalPadding(context)
          : _getSettingsContentPadding(context),
      child: child,
    );
  }

  EdgeInsets _getLargerSymmetricHorizontalPadding(BuildContext context) {
    double sidePadding = ContentSizeHelper.getContentWidth(context) * 0.08;
    return EdgeInsets.symmetric(
      horizontal: sidePadding,
    );
  }

  EdgeInsets _getSettingsContentPadding(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: ContentSizeHelper.getContentWidth(context) * 0.05,
    );
  }
}
