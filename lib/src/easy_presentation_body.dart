import 'package:easy_presentation/src/details/cover_detail_screen.dart';
import 'package:easy_presentation/src/details/tab_detail_screen.dart';
import 'package:easy_presentation/src/details/youtube_detail_screen.dart';
import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/models/presentation_data.dart';
import 'package:easy_presentation/src/widgets/background_widget.dart';
import 'package:easy_presentation/src/widgets/header_text.dart';
import 'package:easy_presentation/src/widgets/presentation_card.dart';
import 'package:flutter/material.dart';

class EasyPresentationBody extends StatefulWidget {
  static const String routeName = "/EasyPresentationBody";

  const EasyPresentationBody({Key? key}) : super(key: key);

  @override
  State<EasyPresentationBody> createState() => _EasyPresentationBodyState();
}

class _EasyPresentationBodyState extends State<EasyPresentationBody> {
  @override
  Widget build(BuildContext context) {
    final controller = EasyPresentationController.of(context);

    return BlurBackgroundWidget(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (controller.topSafeArea)
              SizedBox(height: MediaQuery.of(context).padding.top),
            if (controller.title != null && controller.title!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: HomeHeaderText(
                    leadingText: controller.leadingTitle,
                    name: controller.title!),
              ),
            if (controller.placementBuilder != null)
              controller.placementBuilder!(
                  context, PresentationPlacement.presentationCategoryTop),
            ..._buildCards(context, controller),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCards(
      BuildContext context, EasyPresentationController controller) {
    final List<Widget> widgetList =
        controller.presentationData.map<Widget>((category) {
      return PresentationCard(
        title: category.title,
        imgSrc: category.imgSrc,
        onPress: () => _onPressDetail(category, controller),
      );
    }).toList();
    return widgetList;
  }

  void _onPressDetail(
      PresentationData data, EasyPresentationController controller) {
    controller.onTapEvent?.call(context, PresentationEventAction.cardTap);

    String routeToPush;
    if (data.subCategories != null) {
      routeToPush = TabBarListingScreen.routeName;
    } else if (data.youtubeLink != null) {
      routeToPush = YoutubeDetailScreen.routeName;
    } else {
      routeToPush = CoverDetailScreen.routeName;
    }

    Navigator.pushNamed(context, routeToPush, arguments: data);
  }
}
