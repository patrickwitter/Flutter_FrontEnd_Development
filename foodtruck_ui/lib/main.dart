import 'package:flutter/material.dart';
import 'package:foodtruck_ui/pages/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
              title: 'Food Truck UI',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: FoodTruckHome(),
              debugShowCheckedModeBanner: false,
            ));
  }
}
