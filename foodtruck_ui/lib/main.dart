import 'package:flutter/material.dart';
import 'package:foodtruck_ui/widgets/header.dart';
import 'package:foodtruck_ui/widgets/burgerItem.dart';
import 'package:foodtruck_ui/widgets/aboutText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Truck UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodTruckHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
            scrHeight: scrHeight,
            photos: photos,
            photoIndex: photoIndex,
            scrWidth: scrWidth,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: scrWidth / 10,
              top: scrHeight / 20,
              bottom: scrHeight / 30,
            ),
            child: AboutText(scrWidth: scrWidth),
          ),
          ListView(
            primary: false,
            shrinkWrap: true,
            children: [
              BurgerItem(
                scrWidth: scrWidth,
                scrHeight: scrHeight,
                image: photos[1],
              ),
              BurgerItem(
                scrWidth: scrWidth,
                scrHeight: scrHeight,
                image: photos[3],
              ),
              BurgerItem(
                scrWidth: scrWidth,
                scrHeight: scrHeight,
                image: photos[2],
              ),
              BurgerItem(
                scrWidth: scrWidth,
                scrHeight: scrHeight,
                image: photos[0],
              ),
            ],
          )
        ],
      ),
    );
  }
}
