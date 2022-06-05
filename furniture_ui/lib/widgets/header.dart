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
    return Stack(
      children: [
        Container(
          height: headerHeight,
          width: 100.w,
          color: Color(0xffFDD148),
        ),
        Positioned(
          bottom: headerHeight * .2,
          right: 33.33.w,
          child: Container(
            height: headerHeight,
            width: 90.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(.2),
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
              color: Colors.white.withOpacity(.2),
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
              NavBar(),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Hello Patrick",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "What do you want to buy?",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
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
