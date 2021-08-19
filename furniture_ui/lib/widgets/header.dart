import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// This is the header of the app that contains the profile image
// as well as the search bar
class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.headerHeight,
    required this.scrWidth,
  }) : super(key: key);

  final double headerHeight;
  final double scrWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: headerHeight,
          width: scrWidth,
          color: HexColor("#FDD148"),
        ),
        Positioned(
          bottom: headerHeight * .2,
          right: scrWidth * .3,
          child: Container(
            height: headerHeight,
            width: scrWidth * .9,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
        Positioned(
          bottom: headerHeight * .4,
          left: scrWidth * .25,
          child: Container(
            height: headerHeight * .9,
            width: scrWidth,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Hello Patrick",
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              SearchBar(scrWidth: scrWidth, headerHeight: headerHeight)
            ],
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.scrWidth,
    required this.headerHeight,
  }) : super(key: key);

  final double scrWidth;
  final double headerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: scrWidth,
      height: headerHeight / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.7),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.all(20),
          prefixIcon: Icon(
            Icons.search,
            color: HexColor("#fee16b"),
          ),
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      key: Key("NavBar"),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.white,
              width: 2,
            ),
            image: DecorationImage(
                image: AssetImage("lib/assets/chris.jpg"), fit: BoxFit.cover),
          ),
        ),
        Icon(
          Icons.menu,
          color: Colors.white,
          size: 40,
        )
      ],
    );
  }
}
