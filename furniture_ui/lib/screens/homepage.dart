import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:furniture_ui/widgets/header.dart';
import 'package:furniture_ui/widgets/listItem.dart';
import 'package:furniture_ui/widgets/tabRow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    var headerHeight = scrHeight / 3;
    var tabHeight = scrHeight / 8;
    var listItemHeight = scrHeight / 5;

    return Scaffold(
      backgroundColor: HexColor("#efefef"),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Header(headerHeight: headerHeight, scrWidth: scrWidth),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: TabRow(scrWidth: scrWidth, tabHeight: tabHeight),
          ),
          ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              ListItem(
                scrWidth: scrWidth,
                listItemHeight: listItemHeight,
                imgStr: "lib/assets/chair.jpg",
                isfav: true,
              ),
              ListItem(
                scrWidth: scrWidth,
                listItemHeight: listItemHeight,
                imgStr: "lib/assets/anotherchair.jpg",
                isfav: false,
              ),
              ListItem(
                scrWidth: scrWidth,
                listItemHeight: listItemHeight,
                imgStr: "lib/assets/ottoman.jpg",
                isfav: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
