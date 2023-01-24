import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:easy_presentation/src/utilities/constants.dart';
import 'package:easy_presentation/src/widgets/detail_markdown.dart';
import 'package:flutter/material.dart';

class CoverDetailScreen extends StatelessWidget {
  final PresentationData data;
  const CoverDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 200,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.only(bottom: 12, left: 72),
                      title: Text(data.title ?? 'N/A'),
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image(
                            image: getImage(data.imgSrc),
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.82),
                                  spreadRadius: 50.0,
                                  blurRadius: 100,
                                ),
                              ]),
                              child: Container(height: 10),
                            ),
                          ),
                        ],
                      ),
                      centerTitle: false,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                          child: DetailMarkdown(text: data.detailText ?? ''),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
