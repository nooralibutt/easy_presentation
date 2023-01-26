import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/widgets/wallpaper_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

class DetailMarkdown extends StatelessWidget {
  const DetailMarkdown({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    final markDownStyle =
        EasyPresentationController.of(context).markdownStyleSheet;
    return MarkdownBody(
      data: text ?? ' ',
      imageBuilder: (Uri uri, String? title, String? alt) =>
          markdownImageBuilder(uri, title, alt, context),
      styleSheet: markDownStyle ??
          MarkdownStyleSheet(
            p: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
            h1: const TextStyle(color: Colors.transparent, height: 1),
            h2: const TextStyle(color: Colors.transparent, height: 0.5),
            h3: const TextStyle(color: Colors.transparent, height: 0.2),
            h4: Theme.of(context).textTheme.headline5!,
            h5: Theme.of(context).textTheme.headline6!,
            h6: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
    );
  }

  Widget markdownImageBuilder(
      Uri uri, String? title, String? alt, BuildContext context) {
    return OptimizedCacheImage(
      imageUrl: uri.toString(),
      placeholder: (_, __) => const WallpaperPlaceholder(),
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: 250,
    );
  }
}
