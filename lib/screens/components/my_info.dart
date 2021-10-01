import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import '../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
          color: const Color(0xFF242430),
          child: VStack(
            [
              const Spacer(
                flex: 2,
              ),
              const CustomAppBar().shimmer(primaryColor: primaryColor),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/sangam.png'),
              ),
              const Spacer(),
              'Sangam Singh'
                  .text
                  .subtitle2(context)
                  .xl
                  .center
                  .make()
                  .shimmer(primaryColor: primaryColor),
              '</A Passion Towards Technologies>'
                  .text
                  .bold
                  .sm
                  .subtitle2(context)
                  .center
                  .lineHeight(1.5)
                  .make(),
              const Spacer(
                flex: 2,
              ),
            ],
            alignment: MainAxisAlignment.center,
            crossAlignment: CrossAxisAlignment.center,
          )),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        alignment: Alignment.topLeft,
        child: const Icon(
          AntIcons.codeFilled,
          size: 30,
          color: primaryColor,
        ),
      ),
    );
  }
}
