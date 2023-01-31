import 'package:easy_presentation/src/widgets/wallpaper_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

final kBorderRadius = BorderRadius.circular(20);

class ImageBuilder extends StatelessWidget {
  final String imgPath;
  final BoxFit fit;
  final double? width;
  final double? height;
  const ImageBuilder(
      {Key? key,
      required this.imgPath,
      required this.fit,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imgPath.startsWith('http')) {
      return OptimizedCacheImage(
        imageUrl: imgPath,
        placeholder: (_, __) => const WallpaperPlaceholder(),
        errorWidget: (_, __, ___) => const WallpaperPlaceholder(),
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
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;

        return const WallpaperPlaceholder();
      },
    );
  }
}
