import 'package:flutter/material.dart';

class HomeHeaderText extends StatelessWidget {
  final String? leadingText;
  final String name;
  const HomeHeaderText({super.key, required this.name, this.leadingText});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .headlineSmall!
        .copyWith(fontWeight: FontWeight.w700);

    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: leadingText ?? '',
          style: style,
          children: [
            TextSpan(
                text: ' $name',
                style: style.copyWith(
                    color: Theme.of(context).secondaryHeaderColor)),
          ],
        ),
      ),
    );
  }
}
