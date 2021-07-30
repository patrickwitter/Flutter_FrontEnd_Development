import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets/foodCard.dart';
import 'package:food_recipe_ui/widgets/leadImage.dart';

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
        Title(),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.5), blurRadius: 10)
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search for recipes and channels",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 5,
          decoration: BoxDecoration(
            color: Colors.amber.withOpacity(.5),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "popular recipes".toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "this week".toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        )
      ],
    );
  }
}
