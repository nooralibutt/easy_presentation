import 'package:flutter/material.dart';

class WallpaperPlaceholder extends StatelessWidget {
  const WallpaperPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.withOpacity(0.5),
      child: const Icon(Icons.wallpaper, size: 50),
    );
  }
}
