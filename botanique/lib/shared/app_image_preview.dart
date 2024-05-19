import 'dart:io';

import 'package:flutter/material.dart';

import '../models/enums/app_enums.dart';
import '../util/asset_constants.dart';

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
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: _getImage,
            fit: _getFit,
          ),
        ),
        child: Stack(
          children: [
            if (hasCameraOverlay)
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            if (hasCameraOverlay)
              Center(
                child: Image.asset(
                  AssetConstants.camera,
                  width: 50,
                  height: 50,
                ),
              ),
          ],
        ),
      ),
    );
  }

  ImageProvider get _getImage {
    switch (imageType) {
      case ImageType.network:
        return NetworkImage(imageUrl);
      case ImageType.asset:
        return Image.asset(imageUrl).image;
      case ImageType.file:
        return Image.file(File(imageUrl)).image;
    }
  }

  // TOOD: Not sure if this is worth it
  BoxFit get _getFit {
    final ImageStream stream = _getImage.resolve(const ImageConfiguration());
    var fit = BoxFit.cover;
    stream.addListener(
      ImageStreamListener(
        (ImageInfo info, bool _) {
          final double aspectRatio = info.image.width / info.image.height;
          fit = aspectRatio > 1 ? BoxFit.cover : BoxFit.contain;
        },
      ),
    );
    return fit;
  }
}
