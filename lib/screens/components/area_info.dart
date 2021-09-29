import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title!.text.white.make(),
          text!.text.make(),
        ],
      ),
    );
  }
}
