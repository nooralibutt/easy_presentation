import 'dart:ui';

import 'package:easy_presentation/src/easy_presentation_controller.dart';
import 'package:easy_presentation/src/utilities/constants.dart';
import 'package:flutter/material.dart';

class BlurBackgroundWidget extends StatelessWidget {
  final Widget child;

  const BlurBackgroundWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = EasyPresentationController.of(context);
    final img = controller.bgImage;
    if (img == null) return child;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image: getImage(img), fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          color: Colors.black.withOpacity(0.4),
          child: child,
        ),
      ),
    );
  }
}
