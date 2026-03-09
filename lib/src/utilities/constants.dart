import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_presentation/src/widgets/wallpaper_placeholder.dart';
import 'package:flutter/material.dart';

final kBorderRadius = BorderRadius.circular(20);

class ImageBuilder extends StatelessWidget {
  final String imgPath;
  final BoxFit fit;
  final double? width;
  final double? height;
  const ImageBuilder({
    super.key,
    required this.imgPath,
    required this.fit,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (imgPath.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: imgPath,
        placeholder: (_, _) => const WallpaperPlaceholder(),
        errorWidget: (_, _, _) => const WallpaperPlaceholder(),
        fit: fit,
        width: width,
        height: height,
      );
    }

    return Image(
      image: AssetImage(imgPath),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      loadingBuilder:
          (
            BuildContext context,
            Widget child,
            ImageChunkEvent? loadingProgress,
          ) {
            if (loadingProgress == null) return child;

            return const WallpaperPlaceholder();
          },
    );
  }
}
