import 'package:flutter/material.dart';
import 'package:food_recipe_ui/pages/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scrHeight = MediaQuery.of(context).size.height;
    var scrWidth = MediaQuery.of(context).size.width;
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
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
              color: themeData.scaffoldBackgroundColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // background bottom
                height: scrHeight * 2 / 3,
                color: themeData.cardColor,
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
