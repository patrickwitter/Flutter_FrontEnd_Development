import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

ThemeData lighttheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Color(0xFFeae6de),
  cardColor: Color(0xFFf9f5f2),
  textTheme: textTheme,
  colorScheme: colorScheme,
);

ColorScheme colorScheme = ColorScheme.light().copyWith(
  surface: Colors.grey[50],
);
TextTheme textTheme = TextTheme(
  subtitle1: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28.sp,
    color: Colors.black,
  ),
  bodyText1: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
    color: Colors.black,
  ),
  subtitle2: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    color: Colors.grey,
  ),
  headline1: TextStyle(
    color: Colors.white,
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
  ),
  headline2: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40.sp,
    color: Colors.black,
  ),
  headline3: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
  ),
);
