import 'package:flutter/material.dart';
import 'package:sangam_portfolio/components/animated_linear_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
          child: "Programming Language".text.subtitle2(context).make(),
        ),
        const LinearAnimatedProgressIndicator(
          percentage: 0.7,
          label: 'Java',
        ),
        const LinearAnimatedProgressIndicator(
          percentage: 0.5,
          label: 'Python',
        ),
        const LinearAnimatedProgressIndicator(
          percentage: 0.8,
          label: 'HTML',
        ),
        const LinearAnimatedProgressIndicator(
          percentage: 0.8,
          label: 'CSS',
        ),
      ],
    );
  }
}
