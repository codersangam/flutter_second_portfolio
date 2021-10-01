import 'package:flutter/material.dart';
import 'package:second_portfolio/screens/main_screen.dart';
import 'components/footer.dart';
import 'components/highlights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
        Recommendations(),
        FooterScreen(),
      ],
    );
  }
}
