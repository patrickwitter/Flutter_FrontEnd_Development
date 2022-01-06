import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData.light().copyWith(
  primaryColor: Colors.blue,
);

TextTheme appTextTheme = const TextTheme(
  headline1: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ),
);
