import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surf_instructor_ui/models/instructor.dart';
import 'package:surf_instructor_ui/widgets/gridcard.dart';

//Contains gridview  for the gridview.

class BodyGrid extends StatelessWidget {
  const BodyGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var instructors = Instructor.allInstructors;
    return SizedBox(
      height: 100.h - 300,
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
