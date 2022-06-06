import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'pages/instructorDetail.dart';
import 'pages/intructorHome.dart';

void main() {
  runApp(const SurfApp());
}

class SurfApp extends StatelessWidget {
  const SurfApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (a, b, c) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Surf Instructor',
        initialRoute: "/home",
        routes: {
          "/home": (context) => const InstructorHome(),
          "/detail": (context) => const InstructorDetail(),
        },
      ),
    );
  }
}
