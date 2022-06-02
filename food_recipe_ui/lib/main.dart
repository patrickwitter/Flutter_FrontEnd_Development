import 'package:flutter/material.dart';
import 'package:food_recipe_ui/pages/homepage.dart';
import 'package:food_recipe_ui/themes/themes.dart' as apptheme;
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
              DeviceType deviceType) =>
          MaterialApp(
        title: 'Recipe UI',
        theme: apptheme.lighttheme,
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
