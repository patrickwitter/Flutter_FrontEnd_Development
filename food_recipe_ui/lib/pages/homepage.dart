import 'package:flutter/material.dart';
import 'package:food_recipe_ui/pages/body.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 100.h,
              ),
              Container(
                // background top
                height: 33.h + 50,
                alignment: Alignment.topCenter,
                color: themeData.scaffoldBackgroundColor,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  // background bottom
                  height: 66.66.h,
                  color: themeData.cardColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 2.h,
                  left: 2.w,
                  right: 2.w,
                  bottom: 1.h,
                ),
                child: Body(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
