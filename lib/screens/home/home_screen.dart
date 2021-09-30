import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:second_portfolio/constants.dart';
import 'package:second_portfolio/screens/main_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/bg.jpeg',
                fit: BoxFit.cover,
              ),
              Container(
                color: darkColor.withOpacity(0.66),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    'Discover my Amazing \n Art Space'
                        .text
                        .white
                        .bold
                        .headline3(context)
                        .make(),
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.subtitle1!,
                      child: Row(
                        children: [
                          const FlutterCodedText(),
                          const SizedBox(
                            width: defaultPadding / 2,
                          ),
                          'I built'.text.make(),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('Reponsive web and mobile app'),
                              TyperAnimatedText(
                                  'Complete cocktail app with api'),
                              TyperAnimatedText(
                                  'Catalog app with light and dark theme'),
                            ],
                          ),
                          const SizedBox(
                            width: defaultPadding / 2,
                          ),
                          const FlutterCodedText(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(text: "<", children: [
        TextSpan(
          text: 'flutter',
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(text: ">"),
      ]),
    );
  }
}
