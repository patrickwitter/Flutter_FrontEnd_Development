import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets/foodcard.dart';
import 'package:food_recipe_ui/widgets/leadImage.dart';

import '../widgets/searchbar.dart';
import '../widgets/title.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.scrHeight,
    @required this.scrWidth,
  }) : super(key: key);

  final double scrHeight;
  final double scrWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBar(),
        SizedBox(height: 20),
        BodyTitle(),
        SizedBox(
          height: 15,
        ),
        Container(
          height: scrHeight * .18,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FoodCard(scrWidth: scrWidth),
              FoodCard(scrWidth: scrWidth),
              FoodCard(scrWidth: scrWidth),
              FoodCard(scrWidth: scrWidth),
              FoodCard(scrWidth: scrWidth),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "September 7",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "today".toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        LeadImage(scrHeight: scrHeight)
      ],
    );
  }
}
