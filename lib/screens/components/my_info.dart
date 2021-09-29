import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/3.png'),
              ),
              const Spacer(),
              'Sangam Singh'.text.subtitle2(context).center.make(),
              'Full Stack & Flutter Developer'
                  .text
                  .bold
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
