import 'package:flutter/material.dart';
import 'package:sangam_portfolio/components/animated_counter.dart';
import 'package:sangam_portfolio/responsive.dart';

import '../../../constants.dart';
import 'highlight.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLight(
                      counter: AnimatedCounter(value: 5, label: "+"),
                      label: 'Projects',
                    ),
                    HighLight(
                      counter: AnimatedCounter(value: 20, label: "+"),
                      label: 'Github Projects',
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLight(
                      counter: AnimatedCounter(value: 10, label: "+"),
                      label: 'Flutter Projects',
                    ),
                    HighLight(
                      counter: AnimatedCounter(value: 3, label: "+"),
                      label: 'Wordpress Sites',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HighLight(
                  counter: AnimatedCounter(value: 5, label: "+"),
                  label: 'Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(value: 20, label: "+"),
                  label: 'Github Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(value: 10, label: "+"),
                  label: 'Flutter Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(value: 3, label: "+"),
                  label: 'Wordpress Sites',
                ),
              ],
            ),
    );
  }
}
