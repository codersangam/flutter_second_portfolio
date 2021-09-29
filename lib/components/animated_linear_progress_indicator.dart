import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class LinearAnimatedProgressIndicator extends StatelessWidget {
  const LinearAnimatedProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                label.text.white.make(),
                Text((value * 100).toInt().toString() + '%'),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: bgColor,
            ),
          ],
        ),
      ),
    );
  }
}
