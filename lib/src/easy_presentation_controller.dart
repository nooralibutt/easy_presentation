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

  final String? leadingTitle;
  final String? title;
  final String? bgImage;
  final bool topSafeArea;
  final List<PresentationData> presentationData;
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
