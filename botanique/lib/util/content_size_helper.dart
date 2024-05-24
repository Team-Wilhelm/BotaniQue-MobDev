import 'package:flutter/widgets.dart';

class ContentSizeHelper {
  static const double _kMaxWidth = 800.0;

  static double getContentWidth(BuildContext context) {
    return MediaQuery.of(context).size.width > _kMaxWidth
        ? _kMaxWidth
        : MediaQuery.of(context).size.width;
  }

  static double getContentHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > _kMaxWidth;
  }
}
