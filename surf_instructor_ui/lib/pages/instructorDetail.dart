import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surf_instructor_ui/models/instructor.dart';
import 'package:surf_instructor_ui/widgets/instructorInfo.dart';
import 'package:surf_instructor_ui/widgets/instructor_image.dart';
import 'package:surf_instructor_ui/widgets/bottomRightButton.dart';
import 'package:surf_instructor_ui/widgets/navbutton.dart';

class InstructorDetail extends StatefulWidget {
  const InstructorDetail({Key? key}) : super(key: key);

  @override
  _InstructorDetailState createState() => _InstructorDetailState();
}

class _InstructorDetailState extends State<InstructorDetail> {
  late Instructor instructor;
  @override
  Widget build(BuildContext context) {
    instructor = ModalRoute.of(context)!.settings.arguments as Instructor;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            color: Colors.transparent,
          ),
          Container(
            height: 66.66.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/surfing.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InstructorInfo(
            instructor: instructor,
          ),
          const BottomRightButton(),
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
              child: const Center(
                  child: Text(
                "Explore Programs",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          const NavButton(
            alignmentPos: Alignment.topLeft,
            buttonIcon: Icons.arrow_back,
          ),
          const NavButton(
            alignmentPos: Alignment.topRight,
            buttonIcon: Icons.favorite_border_rounded,
          ),
        ],
      ),
    );
  }
}
