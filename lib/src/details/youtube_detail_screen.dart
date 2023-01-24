import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:easy_presentation/src/widgets/detail_markdown.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeDetailScreen extends StatefulWidget {
  final PresentationData data;

  const YoutubeDetailScreen({super.key, required this.data});

  @override
  _YoutubeDetailScreenState createState() => _YoutubeDetailScreenState();
}

class _YoutubeDetailScreenState extends State<YoutubeDetailScreen> {
  Widget _buildYoutubeWidget(String youtubeLink) {
    final videoId = YoutubePlayer.convertUrlToId(youtubeLink)!;

    YoutubePlayerController _controller = YoutubePlayerController(
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
              displayColor: Theme.of(context).backgroundColor,
              bodyColor: Theme.of(context).backgroundColor)),
      child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
          ),
          builder: (context, player) => player),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(fit: StackFit.expand, children: [
                _buildYoutubeWidget(widget.data.youtubeLink!),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.maybePop(context),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: DetailMarkdown(text: widget.data.detailText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
