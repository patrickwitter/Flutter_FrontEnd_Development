import 'package:flutter/material.dart';
import 'package:surf_instructor_ui/widgets/bodyGrid.dart';

import 'package:surf_instructor_ui/widgets/header.dart';

class InstructorHome extends StatelessWidget {
  const InstructorHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Header(),
            ),
            BodyGrid(),
          ],
        ),
      ),
    );
  }
}
