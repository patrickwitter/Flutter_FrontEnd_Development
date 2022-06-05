import 'package:flutter/material.dart';
import 'package:foodtruck_ui/widgets/aboutText.dart';
import 'package:foodtruck_ui/widgets/burgerItem.dart';

import '../widgets/header.dart';

class FoodTruckHome extends StatefulWidget {
  const FoodTruckHome({Key? key}) : super(key: key);

  @override
  _FoodTruckHomeState createState() => _FoodTruckHomeState();
}

class _FoodTruckHomeState extends State<FoodTruckHome> {
  int photoIndex = 0;
  List<String> photos = [
    'lib/assets/burger1.jpg',
    'lib/assets/burger2.jpg',
    'lib/assets/burger3.jpg',
    'lib/assets/burger4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    var scrHeight = MediaQuery.of(context).size.height;
    var scrWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: ListView(
        shrinkWrap: true,
        children: [
          Header(
            photos: photos,
            photoIndex: photoIndex,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: scrWidth / 10,
              top: scrHeight / 20,
              bottom: scrHeight / 30,
            ),
            child: AboutText(),
          ),
          ListView(
            primary: false,
            shrinkWrap: true,
            children: [
              BurgerItem(
                image: photos[1],
              ),
              BurgerItem(
                image: photos[3],
              ),
              BurgerItem(
                image: photos[2],
              ),
              BurgerItem(
                image: photos[0],
              ),
            ],
          )
        ],
      ),
    );
  }
}
