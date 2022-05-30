import 'package:flutter/material.dart';

ThemeData lighttheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Color(0xFFeae6de),
  cardColor: Color(0xFFf9f5f2),
  textTheme: textTheme,
);

TextTheme textTheme = TextTheme(
  subtitle1: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.black,
  ),
);
