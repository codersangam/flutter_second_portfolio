import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:second_portfolio/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
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
                Responsive.isDesktop(context)
                    ? Row(
                        children: [
                          DefaultTextStyle(
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                            child: AnimatedTextKit(animatedTexts: [
                              TypewriterAnimatedText(
                                'Flutter Developer',
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'Laravel Developer',
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'Full Stack Developer',
                                speed: const Duration(milliseconds: 100),
                              ),
                            ]),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          DefaultTextStyle(
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                            child: AnimatedTextKit(animatedTexts: [
                              TypewriterAnimatedText(
                                'Flutter Developer',
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'Laravel Developer',
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'Full Stack Developer',
                                speed: const Duration(milliseconds: 100),
                              ),
                            ]),
                          ),
                        ],
                      ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding,
                  ),
                const AnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    child: 'Explore More'.text.uppercase.make(),
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          'I built '.text.make(),
          Responsive.isMobile(context)
              ? const Expanded(
                  child: AnimatedTexts(),
                )
              : const AnimatedTexts(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'Reponsive web and mobile app',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Complete cocktail app with api',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Catalog app with light and dark theme',
          speed: const Duration(milliseconds: 60),
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
