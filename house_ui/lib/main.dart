import 'package:flutter/material.dart';
import 'package:house_ui/screens/LandingPage.dart';
import 'package:house_ui/utils/constants.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      theme: ThemeData(
          primaryColor: COLOR_WHITE,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat"),
      home: const LandingPage(),
    );
  }
}
