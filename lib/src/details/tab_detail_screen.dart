import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:easy_presentation/src/utilities/constants.dart';
import 'package:easy_presentation/src/widgets/detail_markdown.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widgets/custom_widgets.dart';

class TabBarListingScreen extends StatefulWidget {
  static const String routeName = "/TabBarListingScreen";

  final PresentationData data;
  final EasyPresentationController controller;
  const TabBarListingScreen(
      {super.key, required this.data, required this.controller});

  @override
  State<TabBarListingScreen> createState() => _TabBarListingScreenState();
}

class _TabBarListingScreenState extends State<TabBarListingScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: widget.data.subCategories!.length, vsync: this);

    final controller = widget.controller;

    if (controller.onTapEvent != null) {
      tabController!.addListener(() {
        if (tabController?.indexIsChanging == false) {
          controller.onTapEvent
              ?.call(context, PresentationEventAction.tabChanged);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = EasyPresentationController.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            controller.onTapEvent
                ?.call(context, PresentationEventAction.backTap);
            Navigator.pop(context);
          },
        ),
        title: Text(widget.data.title),
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: widget.data.subCategories!
              .map((e) => Tab(text: e.title))
              .toList(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            if (controller.placementBuilder != null)
              controller.placementBuilder!(
                  context, PresentationPlacement.tabDetailBottom),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: widget.data.subCategories!
                    .map((e) => TabDetailWidget(e))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabDetailWidget extends StatelessWidget {
  final PresentationData category;

  const TabDetailWidget(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const VerticalSpacing(),
          Text(category.title,
              style: Theme.of(context).textTheme.headlineMedium),
          const VerticalSpacing(),
          category.youtubeLink == null
              ? _buildCoverImage(context)
              : _buildYoutubeWidget(context),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DetailMarkdown(text: category.detailText),
          ),
        ],
      ),
    );
  }

  Widget _buildCoverImage(BuildContext context) {
    if (category.imgSrc.isEmpty) return const SizedBox();

    return Container(
      color: category.imageMode == ImageMode.landscape.name
          ? Colors.transparent
          : Colors.white,
      width: double.infinity,
      height: category.imageMode == ImageMode.landscape.name
          ? MediaQuery.of(context).size.height * 0.33
          : MediaQuery.of(context).size.height * 0.4,
      child: Image(
        image: getImage(category.imgSrc),
        fit: category.imageMode == ImageMode.landscape.name
            ? BoxFit.cover
            : BoxFit.contain,
      ),
    );
  }

  Widget _buildYoutubeWidget(BuildContext context) {
    final videoId = YoutubePlayer.convertUrlToId(category.youtubeLink!)!;

    final controller = YoutubePlayerController(
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
}
