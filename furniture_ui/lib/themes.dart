import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

ThemeData appTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Color(0xffefefef),
  cardColor: Colors.white,
  textTheme: _appTextTheme,
  primaryColor: Color(0xfffee16b),
  secondaryHeaderColor: Color(0xffFDD148),
  shadowColor: Colors.white.withOpacity(.2),
  canvasColor: Color(0xfffac83e),
  colorScheme: ColorScheme.light().copyWith(
    secondary: Color(0xfffee16b),
  ),
);

TextTheme _appTextTheme = TextTheme(
  bodyText2: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontFamily: "Quicksand",
    fontSize: 10.sp,
  ),
  headline1: TextStyle(
      fontFamily: "Quicksand",
      fontWeight: FontWeight.bold,
      fontSize: 40.sp,
      color: Colors.black),
  headline3: TextStyle(
      fontFamily: "Quicksand",
      fontWeight: FontWeight.bold,
      fontSize: 20.sp,
      color: Colors.black),
  headline4: TextStyle(
      fontFamily: "Quicksand",
      fontWeight: FontWeight.bold,
      fontSize: 18.sp,
      color: Colors.black),
  subtitle1: TextStyle(
    fontSize: 15.sp,
    color: Colors.grey,
  ),
  caption: TextStyle(
    fontSize: 12.sp,
    color: Colors.white,
  ),
);
