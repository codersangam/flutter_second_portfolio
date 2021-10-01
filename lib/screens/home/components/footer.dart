import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Thanks for Visiting. '
            .richText
            .semiBold
            .white
            .subtitle2(context)
            .withTextSpanChildren([
          'That\'s all.'.textSpan.gray500.subtitle2(context).make()
        ]).make(),
        10.heightBox,
        [
          'Crafted with '.text.color(primaryColor).subtitle2(context).make(),
          const Icon(
            AntIcons.heartFilled,
            color: Vx.red500,
            size: 14,
          ),
          ' in Nepal.'.text.color(primaryColor).subtitle2(context).make(),
        ].hStack(crossAlignment: CrossAxisAlignment.center),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
