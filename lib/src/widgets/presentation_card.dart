import 'package:easy_presentation/src/utilities/constants.dart';
import 'package:flutter/material.dart';

class PresentationCard extends StatelessWidget {
  final String? title;
  final String? imgSrc;
  final Function? onPress;

  const PresentationCard({super.key, this.title, this.imgSrc, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: kBorderRadius,
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(2, 2),
              blurRadius: 3,
              spreadRadius: 3,
            )
          ]),
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: Stack(
          children: [
            Image(
              image: getImage(imgSrc!),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
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
                child: const SizedBox(width: double.infinity, height: 2),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onPress as void Function()?,
                child: const SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
