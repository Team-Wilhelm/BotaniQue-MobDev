import 'dart:io';

import 'package:flutter/material.dart';

import '../style/asset_constants.dart';

enum ImageType {
  network,
  asset,
  file,
}

class AppImagePreview extends StatelessWidget {
  const AppImagePreview({
    super.key,
    this.hasCameraOverlay = false,
    required this.imageUrl,
    this.imageType = ImageType.network,
    this.onTap,
  });

  final String imageUrl;
  final bool hasCameraOverlay;
  final VoidCallback? onTap;
  final ImageType imageType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: _getImage(),
            fit: BoxFit.cover,
            colorFilter: _getFilter,
          ),
        ),
        child: hasCameraOverlay
            ? Center(
                child: Image.network(
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

  ImageProvider _getImage() {
    switch (imageType) {
      case ImageType.network:
        return NetworkImage(imageUrl);
      case ImageType.asset:
        return Image.asset(imageUrl).image;
      case ImageType.file:
        return Image.file(File(imageUrl)).image;
    }
  }
}
