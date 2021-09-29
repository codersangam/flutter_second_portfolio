import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_portfolio/constants.dart';
import 'package:second_portfolio/screens/main_screen.dart';

void main() {
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
      home: const MainScreen(),
    );
  }
}
