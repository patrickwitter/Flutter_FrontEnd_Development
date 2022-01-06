import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    colorScheme: const ColorScheme.light().copyWith(
      secondary: Colors.grey,
    ));

TextTheme appTextTheme = const TextTheme(
  bodyText1: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 10,
  ),
  subtitle1: TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  ),
);
