import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percenatage,
    required this.label,
  }) : super(key: key);

  final double percenatage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percenatage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                    child: Text(
                  (value * 100).toInt().toString() + '%',
                  style: Theme.of(context).textTheme.subtitle1,
                )),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        label.text
            .maxLines(1)
            .overflow(TextOverflow.ellipsis)
            .subtitle2(context)
            .make(),
      ],
    );
  }
}
