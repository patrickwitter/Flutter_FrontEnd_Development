import 'package:flutter/material.dart';
import 'package:furniture_ui/screens/homepage.dart';
import 'package:furniture_ui/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
