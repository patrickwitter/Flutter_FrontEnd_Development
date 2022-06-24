import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData.light().copyWith(
  textTheme: _appTextTheme,
);

TextTheme _appTextTheme = TextTheme(
  headline1: TextStyle(fontSize: 16, fontFamily: "Varela"),
);
