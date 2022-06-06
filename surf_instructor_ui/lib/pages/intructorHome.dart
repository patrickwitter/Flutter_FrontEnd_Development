import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surf_instructor_ui/widgets/bodygrid.dart';

import 'package:surf_instructor_ui/widgets/header.dart';

class InstructorHome extends StatelessWidget {
  const InstructorHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
              child: Header(),
            ),
            BodyGrid(),
          ],
        ),
      ),
    );
  }
}
