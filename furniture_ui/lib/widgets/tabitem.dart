import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    required this.tabHeight,
    required this.imgStr,
    required this.description,
  }) : super(key: key);

  final double tabHeight;
  final String imgStr;
  final String description;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: tabHeight / 2,
          width: 15.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgStr),
            ),
          ),
        ),
        Text(
          description,
          style: themeData.textTheme.subtitle2,
        )
      ],
    );
  }
}
