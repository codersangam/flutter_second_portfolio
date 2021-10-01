import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);
  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        label!.text.subtitle2(context).make(),
      ],
    );
  }
}
