import 'package:flutter/material.dart';
import 'package:second_portfolio/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: HStack([
            const Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            Expanded(
              flex: 7,
              child: VxBox().blue900.make(),
            ),
          ]),
        ),
      ),
    );
  }
}
