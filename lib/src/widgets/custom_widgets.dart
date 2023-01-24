import 'package:flutter/material.dart';

class HorizontalSpacing extends StatelessWidget {
  final double of;

  const HorizontalSpacing({super.key, this.of = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: of);
  }
}

class VerticalSpacing extends StatelessWidget {
  final double of;

  const VerticalSpacing({super.key, this.of = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: of);
  }
}
