import 'package:flutter/material.dart';
import 'package:second_portfolio/constants.dart';
import 'package:second_portfolio/screens/components/skills.dart';
import 'package:velocity_x/velocity_x.dart';

import 'area_info.dart';
import 'coding.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: VStack([
        const MyInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: VStack(
              [
                const AreaInfo(
                  title: 'Residence',
                  text: 'Kathmandu',
                ),
                const AreaInfo(
                  title: 'Country',
                  text: 'Nepal',
                ),
                const AreaInfo(
                  title: 'Age',
                  text: '24',
                ),
                const Skills(),
                defaultPadding.heightBox,
                const Coding(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
