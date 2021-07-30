import 'package:flutter/material.dart';
import 'package:surf_instructor_ui/models/instructor.dart';

//Contains gridview and grid card designs for the gridview.

class BodyGrid extends StatelessWidget {
  const BodyGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var instructors = Instructor.allInstructors;
    return Container(
      height: screenHeight - 300,
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 2 / 3,
        ),
        itemCount: instructors.length,
        itemBuilder: (context, index) {
          return GridCard(
            instructor: instructors[index],
          );
        },
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  final Instructor instructor;
  const GridCard({Key key, @required this.instructor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail", arguments: instructor);
      },
      child: Stack(
        children: [
          Container(
            height: 150.0,
            width: 100.0,
            color: Colors.transparent,
          ),
          Positioned(
            top: 70,
            left: 30,
            child: Container(
              height: 40,
              width: 60,
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
            top: 5,
            left: 10,
            child: Hero(
              tag: instructor.instructorName,
              child: Container(
                height: 110,
                width: 90,
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
            top: 125,
            left: 20,
            child: Text(
              instructor.instructorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: 150,
              left: 30,
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
