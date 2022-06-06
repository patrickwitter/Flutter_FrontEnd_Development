import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surf_instructor_ui/models/instructor.dart';

class GridCard extends StatelessWidget {
  final Instructor instructor;
  const GridCard({Key key, @required this.instructor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imageWidth = 25.w;
    final double imageHeight = 16.h;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail", arguments: instructor);
      },
      child: Stack(
        children: [
          Container(
            height: 10.h,
            width: 10.w,
            color: Colors.transparent,
          ),
          Positioned(
            top: 9.h,
            left: 4.w,
            child: Container(
              height: imageHeight * .4,
              width: imageWidth * (2 / 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 8,
                      spreadRadius: 10,
                      color: Colors.grey[400].withOpacity(.7),
                    ),
                  ]),
            ),
          ),
          Positioned(
            top: 1.h,
            left: 2.w,
            child: Hero(
              tag: instructor.instructorName,
              child: Container(
                height: imageHeight,
                width: imageWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(instructor.instructorPic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 18.h,
            left: 4.w,
            child: Text(
              instructor.instructorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: 21.h,
              left: 8.w,
              child: Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    size: 15,
                    color: Colors.grey[600],
                  ),
                  Text(
                    instructor.rating,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
