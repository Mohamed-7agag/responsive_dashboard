import 'package:flutter/material.dart';

import 'single_dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentIndex});
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: SingleDotIndicator(isActive: currentIndex == index),
        ),
      ),
    );
  }
}
