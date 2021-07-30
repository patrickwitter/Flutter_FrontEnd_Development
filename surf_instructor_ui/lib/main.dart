import 'package:flutter/material.dart';
import 'pages/instructorDetail.dart';
import 'pages/intructorHome.dart';

void main() {
  runApp(SurfApp());
}

class SurfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Surf Instructor',
      initialRoute: "/home",
      routes: {
        "/home": (context) => InstructorHome(),
        "/detail": (context) => InstructorDetail(),
      },
    );
  }
}
