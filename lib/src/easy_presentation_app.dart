import 'package:easy_presentation/src/details/cover_detail_screen.dart';
import 'package:easy_presentation/src/details/tab_detail_screen.dart';
import 'package:easy_presentation/src/details/youtube_detail_screen.dart';
import 'package:easy_presentation/src/easy_presentation_body.dart';
import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class EasyPresentationApp extends StatelessWidget {
  final List<PresentationData> presentationData;
  final MarkdownStyleSheet? markdownStyleSheet;
  final String? leadingTitle;
  final String? title;
  final String? bgImage;
  final bool topSafeArea;

  const EasyPresentationApp({
    Key? key,
    required this.presentationData,
    this.title,
    this.leadingTitle,
    this.bgImage,
    this.markdownStyleSheet,
    this.topSafeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyPresentationController(
      presentationData: presentationData,
      leadingTitle: leadingTitle,
      title: title,
      bgImage: bgImage,
      topSafeArea: topSafeArea,
      markdownStyleSheet: markdownStyleSheet,
      child: Navigator(
        initialRoute: EasyPresentationBody.routeName,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case EasyPresentationBody.routeName:
              return _generatePage(const EasyPresentationBody());
            case CoverDetailScreen.routeName:
              return _generatePage(CoverDetailScreen(
                  data: settings.arguments as PresentationData));
            case YoutubeDetailScreen.routeName:
              return _generatePage(YoutubeDetailScreen(
                  data: settings.arguments as PresentationData));
            case TabBarListingScreen.routeName:
              return _generatePage(TabBarListingScreen(
                  data: settings.arguments as PresentationData));
          }
          return null;
        },
      ),
    );
  }

  Route _generatePage(child) => MaterialPageRoute(builder: (_) => child);

  static void launchApp(
    BuildContext context, {
    required List<PresentationData> presentationData,
    MarkdownStyleSheet? markdownStyleSheet,
    AppBar? appBar,
    String? leadingTitle,
    String? title,
    String? bgImage,
    bool topSafeArea = true,
  }) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: appBar,
            body: EasyPresentationApp(
              leadingTitle: leadingTitle,
              title: title,
              bgImage: bgImage,
              topSafeArea: topSafeArea,
              presentationData: presentationData,
              markdownStyleSheet: markdownStyleSheet,
            ),
          ),
        ),
      );
}
