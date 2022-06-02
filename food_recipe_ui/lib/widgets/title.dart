import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodyTitle extends StatelessWidget {
  const BodyTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 7.h,
          width: 1.5.w,
          decoration: BoxDecoration(
            color: Colors.amber.withOpacity(.5),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "popular recipes".toUpperCase(),
              style: themeData.textTheme.subtitle1,
            ),
            Text(
              "this week".toUpperCase(),
              style: themeData.textTheme.subtitle1,
            ),
          ],
        )
      ],
    );
  }
}
