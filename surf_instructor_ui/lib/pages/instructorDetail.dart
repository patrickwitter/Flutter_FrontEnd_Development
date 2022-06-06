import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surf_instructor_ui/models/instructor.dart';
import 'package:surf_instructor_ui/widgets/instructorInfo.dart';
import 'package:surf_instructor_ui/widgets/instructor_image.dart';
import 'package:surf_instructor_ui/widgets/bottomRightButton.dart';
import 'package:surf_instructor_ui/widgets/navbutton.dart';

class InstructorDetail extends StatefulWidget {
  const InstructorDetail({Key key}) : super(key: key);

  @override
  _InstructorDetailState createState() => _InstructorDetailState();
}

class _InstructorDetailState extends State<InstructorDetail> {
  Instructor instructor;
  @override
  Widget build(BuildContext context) {
    instructor = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            color: Colors.transparent,
          ),
          Container(
            height: 66.66.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/surfing.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InstructorInfo(
            instructor: instructor,
          ),
          BottomRightButton(),
          InstructorImage(instructor: instructor),
          Positioned(
            top: 25.h + 50,
            left: 30.w,
            child: Container(
              height: 50,
              width: 40.w,
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
            alignmentPos: Alignment.topLeft,
            buttonIcon: Icons.arrow_back,
          ),
          NavButton(
            alignmentPos: Alignment.topRight,
            buttonIcon: Icons.favorite_border_rounded,
          ),
        ],
      ),
    );
  }
}
