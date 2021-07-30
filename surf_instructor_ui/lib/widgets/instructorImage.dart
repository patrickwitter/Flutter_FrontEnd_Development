import 'package:flutter/material.dart';
import 'package:surf_instructor_ui/models/instructor.dart';

class InstructorImage extends StatelessWidget {
  const InstructorImage({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
    @required this.instructor,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Instructor instructor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * (1.8 / 3),
      left: screenWidth - 130,
      child: Hero(
        tag: instructor.instructorName,
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(0.3),
                )
              ],
              image: DecorationImage(
                image: AssetImage(instructor.instructorPic),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
