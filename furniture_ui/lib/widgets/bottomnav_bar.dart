import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      indicatorColor: Colors.yellow,
      tabs: <Widget>[
        Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
        Tab(icon: Icon(Icons.timer, color: Colors.grey)),
        Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
        Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
      ],
    );
  }
}
