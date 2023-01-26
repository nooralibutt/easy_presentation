import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class EasyPresentationController extends InheritedWidget {
  const EasyPresentationController({
    super.key,
    this.leadingTitle,
    this.title,
    this.bgImage,
    required this.topSafeArea,
    required this.presentationData,
    this.markdownStyleSheet,
    required super.child,
    required this.context,
  });

  // This [leadingTitle] will be added before main [title]
  final String? leadingTitle;

  // This is the main title text
  final String? title;

  // This will be added as a background image with blur effect
  final String? bgImage;

  // This is for safe area space
  final bool topSafeArea;

  // This will be need to show the data in the form of presentation
  final List<PresentationData> presentationData;

  // Use this to add your custom [MarkdownStyleSheet]
  final MarkdownStyleSheet? markdownStyleSheet;

  final BuildContext context;

  static EasyPresentationController? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<EasyPresentationController>();
  }

  static EasyPresentationController of(BuildContext context) {
    final EasyPresentationController? result = maybeOf(context);
    assert(result != null, 'No Presentation found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(EasyPresentationController oldWidget) =>
      presentationData != oldWidget.presentationData;
}
