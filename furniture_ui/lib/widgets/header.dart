import 'package:flutter/material.dart';
import 'package:furniture_ui/widgets/navbar.dart';
import 'package:furniture_ui/widgets/searchbar.dart';
import 'package:sizer/sizer.dart';

// This is the header of the app that contains the profile image
// as well as the search bar
class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final double headerHeight = 33.33.h;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Stack(
      children: [
        Container(
          height: headerHeight,
          width: 100.w,
          color: themeData.secondaryHeaderColor,
        ),
        Positioned(
          bottom: headerHeight * .2,
          right: 33.33.w,
          child: Container(
            height: headerHeight,
            width: 90.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: themeData.shadowColor,
            ),
          ),
        ),
        Positioned(
          bottom: headerHeight * .4,
          left: 25.w,
          child: Container(
            height: headerHeight * .9,
            width: 100.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: themeData.shadowColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2.h,
            horizontal: 2.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavBar(),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Hello Patrick",
                style: themeData.textTheme.headline1,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "What do you want to buy?",
                style: themeData.textTheme.headline3,
              ),
              SizedBox(
                height: 3.h,
              ),
              SearchBar(headerHeight: headerHeight)
            ],
          ),
        ),
      ],
    );
  }
}
