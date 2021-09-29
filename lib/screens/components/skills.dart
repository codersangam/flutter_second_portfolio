import 'package:flutter/material.dart';
import 'package:second_portfolio/components/animated_circular_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: "Skills".text.subtitle2(context).make(),
        ),
        Row(
          children: [
            const Expanded(
              child: AnimatedCircularProgressIndicator(
                percenatage: 0.6,
                label: "Flutter",
              ),
            ),
            defaultPadding.widthBox,
            const Expanded(
              child: AnimatedCircularProgressIndicator(
                percenatage: 0.7,
                label: "Laravel",
              ),
            ),
            defaultPadding.widthBox,
            const Expanded(
              child: AnimatedCircularProgressIndicator(
                percenatage: 0.8,
                label: "Wordpress",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
