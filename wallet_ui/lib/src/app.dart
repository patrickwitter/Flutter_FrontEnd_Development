import 'package:flutter/material.dart';
import 'package:wallet_ui/src/pages/home_page.dart';
import 'package:wallet_ui/src/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
