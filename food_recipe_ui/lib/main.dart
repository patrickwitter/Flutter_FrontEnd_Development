import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets/body.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scrHeight = MediaQuery.of(context).size.height;
    var scrWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HexColor("#eae6de"),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: scrHeight,
            ),
            Container(
              // background top
              height: scrHeight * 1 / 3 + 50,
              alignment: Alignment.topCenter,
              color: HexColor("#eae6de"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // background bottom
                height: scrHeight * 2 / 3,
                color: HexColor("#f9f5f2"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Body(
                scrHeight: scrHeight,
                scrWidth: scrWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
