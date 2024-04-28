import 'package:flutter/material.dart';

import '../style/asset_constants.dart';

class AppImagePreview extends StatelessWidget {
  const AppImagePreview({
    super.key,
    this.hasCameraOverlay = false,
    required this.imageUrl,
    this.onTap,
  });

  final String imageUrl;
  final bool hasCameraOverlay;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: _getFilter,
          ),
        ),
        child: hasCameraOverlay
            ? Center(
                child: Image.asset(
                  AssetConstants.camera,
                  width: 50,
                  height: 50,
                ),
              )
            : null,
      ),
    );
  }

  ColorFilter? get _getFilter {
    if (!hasCameraOverlay) {
      return null;
    }

    return ColorFilter.mode(
      Colors.black.withOpacity(0.5),
      BlendMode.darken,
    );
  }
}
