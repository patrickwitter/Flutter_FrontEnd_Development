import 'package:flutter/material.dart';
import 'package:food_recipe_ui/pages/homepage.dart';
import 'package:food_recipe_ui/themes/themes.dart' as apptheme;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe UI',
      theme: apptheme.lighttheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
