import 'package:easy_presentation/easy_presentation.dart';
import 'package:easy_presentation/src/easy_presentation_body.dart';
import 'package:easy_presentation/src/easy_presentation_controller.dart';
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
    this.title,
    this.leadingTitle,
    this.bgImage,
    required this.presentationData,
    this.markdownStyleSheet,
    this.topSafeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyPresentationController(
      leadingTitle: leadingTitle,
      title: title,
      bgImage: bgImage,
      topSafeArea: topSafeArea,
      presentationData: presentationData,
      markdownStyleSheet: markdownStyleSheet,
      child: const EasyPresentationBody(),
    );
  }
}
