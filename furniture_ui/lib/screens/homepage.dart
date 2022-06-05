import 'package:flutter/material.dart';
import 'package:furniture_ui/widgets/bottomnav_bar.dart';
import 'package:furniture_ui/widgets/header.dart';
import 'package:furniture_ui/widgets/listItem.dart';
import 'package:furniture_ui/widgets/tabRow.dart';
import 'package:sizer/sizer.dart';

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
    var tabHeight = 12.5.h;
    var listItemHeight = 20.h;

    return Scaffold(
      backgroundColor: Color(0xffefefef),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: BottomNavBar(controller: controller),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 1.h,
            ),
            child: TabRow(tabHeight: tabHeight),
          ),
          ListView(
            key: Key("HomeList"),
            shrinkWrap: true,
            primary: false,
            children: [
              ListItem(
                key: Key("list1"),
                listItemHeight: listItemHeight,
                imgStr: "lib/assets/chair.jpg",
                isfav: true,
              ),
              ListItem(
                listItemHeight: listItemHeight,
                imgStr: "lib/assets/anotherchair.jpg",
                isfav: false,
              ),
              ListItem(
                key: Key("list3"),
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
