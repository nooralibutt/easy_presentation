import 'package:flutter/material.dart';

class WallpaperPlaceholder extends StatelessWidget {
  const WallpaperPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.withAlpha(127),
      child: const Icon(Icons.wallpaper, size: 50),
    );
  }
}
