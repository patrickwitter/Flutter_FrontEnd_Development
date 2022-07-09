import 'package:e_commerce_ui/views/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final customThemeData = ThemeData(
  backgroundColor: appDefaultGrayColor,
  fontFamily: GoogleFonts.montaguSlab().fontFamily,
  appBarTheme: AppBarTheme(
    backgroundColor: appDefaultGrayColor,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
      color: appBarTitleColor,
      fontSize: 25,
      fontWeight: FontWeight.w600,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: appBarTitleColor),
  ),
);
