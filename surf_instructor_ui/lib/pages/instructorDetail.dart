import 'package:flutter/material.dart';
import 'package:surf_instructor_ui/models/instructor.dart';
import 'package:surf_instructor_ui/widgets/instructorInfo.dart';
import 'package:surf_instructor_ui/widgets/instructorImage.dart';
import 'package:surf_instructor_ui/widgets/bottomRightButton.dart';
import 'package:surf_instructor_ui/widgets/navButton.dart';

class InstructorDetail extends StatefulWidget {
  const InstructorDetail({Key key}) : super(key: key);

  @override
  _InstructorDetailState createState() => _InstructorDetailState();
}

class _InstructorDetailState extends State<InstructorDetail> {
  Instructor instructor;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    instructor = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            color: Colors.transparent,
          ),
          Container(
            height: screenHeight * (2 / 3),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/surfing.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          InstructorInfo(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            instructor: instructor,
          ),
          BottomRightButton(screenHeight: screenHeight),
          InstructorImage(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              instructor: instructor),
          Positioned(
            top: screenHeight / 4 + 50,
            left: screenWidth / 2 - screenWidth / 5,
            child: Container(
              height: 50,
              width: screenWidth / 2.5,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.7),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                  child: Text(
                "Explore Programs",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          NavButton(
              alignmentPos: Alignment.topLeft, buttonIcon: Icons.arrow_back),
          NavButton(
              alignmentPos: Alignment.topRight,
              buttonIcon: Icons.favorite_border_rounded),
        ],
      ),
    );
  }
}
