import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_portfolio/constants.dart';
import 'package:second_portfolio/screens/home/home_screen.dart';
import 'package:second_portfolio/components/intro_progress_indicator.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sangam\'s Portfolio',
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyText1: const TextStyle(color: bodyTextColor),
                bodyText2: const TextStyle(color: bodyTextColor),
              )),
      home: const IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({
    Key? key,
  }) : super(key: key); // this will create a instance object of a class

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              IntroProgressIndicator(percentage: 1.0, label: 'Initializing...'),
            ],
          ),
        ),
      ),
    );
  }
}
