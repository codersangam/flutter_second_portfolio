import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:second_portfolio/constants.dart';
import 'package:second_portfolio/screens/components/skills.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
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
                  const Knowledges(),
                  const Divider(),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          'download cv'
                              .text
                              .uppercase
                              .bodyText1(context)
                              .make(),
                          const SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset('assets/icons/download.svg'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding),
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            launch('https://github.com/codersangam');
                          },
                          icon: SvgPicture.asset('assets/icons/github.svg'),
                        ),
                        IconButton(
                          onPressed: () {
                            launch(
                                'https://www.linkedin.com/in/sangam-singh-1b21941a0/');
                          },
                          icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                        ),
                        IconButton(
                          onPressed: () {
                            launch(
                                'https://www.facebook.com/profile.php?id=100026804131628');
                          },
                          icon: SvgPicture.asset('assets/icons/facebook.svg'),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
