import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:easy_presentation/src/widgets/detail_markdown.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeDetailScreen extends StatefulWidget {
  static const String routeName = "/YoutubeDetailScreen";

  final PresentationData data;

  const YoutubeDetailScreen({super.key, required this.data});

  @override
  State<YoutubeDetailScreen> createState() => _YoutubeDetailScreenState();
}

class _YoutubeDetailScreenState extends State<YoutubeDetailScreen> {
  Widget _buildYoutubeWidget(String youtubeLink) {
    final videoId = YoutubePlayer.convertUrlToId(youtubeLink)!;

    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        loop: true,
      ),
    );

    return Theme(
      data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.apply(
              displayColor: Theme.of(context).colorScheme.background,
              bodyColor: Theme.of(context).colorScheme.background)),
      child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: controller,
          ),
          builder: (context, player) => player),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = EasyPresentationController.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _buildYoutubeWidget(widget.data.youtubeLink!),
                  Align(
                    alignment: Alignment.topLeft,
                    child: BackButton(
                      onPressed: () {
                        controller.onTapEvent
                            ?.call(context, EventAction.backTap);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    if (controller.placementBuilder != null)
                      controller.placementBuilder!(
                          context, Placement.youtubeDetailBottom),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: DetailMarkdown(text: widget.data.detailText),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
