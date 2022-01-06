import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData.light().copyWith(
    textTheme: appTextTheme,
    primaryColor: Colors.blue,
    colorScheme: const ColorScheme.light().copyWith(
      secondary: Colors.grey,
    ));

TextTheme appTextTheme = const TextTheme(
  headline1: TextStyle(
    fontSize: 24,
    color: Color(0xFF303030),
  ),
  bodyText1: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
  subtitle1: TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),
);
