import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets/foodCard/foodcard.dart';
import 'package:food_recipe_ui/widgets/leadImage.dart';
import 'package:sizer/sizer.dart';

import '../widgets/searchbar.dart';
import '../widgets/title.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBar(),
        SizedBox(height: 2.h),
        BodyTitle(),
        SizedBox(
          height: 2.h,
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 18.h),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FoodCard(),
              FoodCard(),
              FoodCard(),
              FoodCard(),
              FoodCard(),
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "September 7",
          style: themeData.textTheme.headline3,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          "today".toUpperCase(),
          style: themeData.textTheme.headline2,
        ),
        LeadImage()
      ],
    );
  }
}
