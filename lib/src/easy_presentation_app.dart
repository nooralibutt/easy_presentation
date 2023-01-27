import 'package:easy_presentation/src/details/cover_detail_screen.dart';
import 'package:easy_presentation/src/details/tab_detail_screen.dart';
import 'package:easy_presentation/src/details/youtube_detail_screen.dart';
import 'package:easy_presentation/src/easy_presentation_body.dart';
import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class EasyPresentationApp extends StatelessWidget {
  /// This [leadingTitle] will be added before main [title]
  final String? leadingTitle;

  /// This is the main title text
  final String? title;

  /// This will be added as a background image with blur effect
  final String? bgImage;

  /// This is for safe area space
  final bool topSafeArea;

  /// This will be need to show the data in the form of presentation
  final List<PresentationData> presentationData;

  /// Use this to add your custom [MarkdownStyleSheet]
  final MarkdownStyleSheet? markdownStyleSheet;

  /// [onTapEvent] will be call on every event preformed by the user
  final Function(BuildContext, EventAction)? onTapEvent;

  /// [placementBuilder] is used to build your custom widget at specific places
  final Widget Function(BuildContext, Placement)? placementBuilder;

  const EasyPresentationApp({
    Key? key,
    required this.presentationData,
    this.title,
    this.leadingTitle,
    this.bgImage,
    this.markdownStyleSheet,
    this.topSafeArea = true,
    this.onTapEvent,
    this.placementBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyPresentationController(
      presentationData: presentationData,
      leadingTitle: leadingTitle,
      title: title,
      context: context,
      bgImage: bgImage,
      topSafeArea: topSafeArea,
      markdownStyleSheet: markdownStyleSheet,
      onTapEvent: onTapEvent,
      placementBuilder: placementBuilder,

      /// Package has its own navigation
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
    /// This [leadingTitle] will be added before main [title]
    final String? leadingTitle,

    /// This is the main title text
    final String? title,

    /// This will be added as a background image with blur effect
    final String? bgImage,

    /// This is for safe area space
    final bool topSafeArea = true,

    /// This will be need to show the data in the form of presentation
    required final List<PresentationData> presentationData,

    /// Use this to add your custom [MarkdownStyleSheet]
    final MarkdownStyleSheet? markdownStyleSheet,

    /// [onTapEvent] will be call on every event preformed by the user
    final EventActionCallback? onTapEvent,

    /// [placementBuilder] is used to build your custom widget at specific places
    final PlacementBuilder? placementBuilder,
  }) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => Scaffold(
            body: EasyPresentationApp(
              leadingTitle: leadingTitle,
              title: title,
              bgImage: bgImage,
              topSafeArea: topSafeArea,
              presentationData: presentationData,
              markdownStyleSheet: markdownStyleSheet,
              onTapEvent: onTapEvent,
              placementBuilder: placementBuilder,
            ),
          ),
        ),
      );
}
