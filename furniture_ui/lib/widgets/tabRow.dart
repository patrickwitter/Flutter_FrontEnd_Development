import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabRow extends StatelessWidget {
  TabRow({
    Key? key,
    required this.tabHeight,
  }) : super(key: key);

  final double tabHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      width: 100.w,
      height: tabHeight,
      color: themeData.cardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 1.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TabItem(
              tabHeight: tabHeight,
              imgStr: "lib/assets/sofas.png",
              description: "Sofa",
            ),
            TabItem(
              tabHeight: tabHeight,
              imgStr: "lib/assets/wardrobe.png",
              description: "Wardrobe",
            ),
            TabItem(
              tabHeight: tabHeight,
              imgStr: "lib/assets/desks.png",
              description: "Desk",
            ),
            TabItem(
              tabHeight: tabHeight,
              imgStr: "lib/assets/dresser.png",
              description: "Dresser",
            ),
          ],
        ),
      ),
    );
  }
}

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
          style: TextStyle(
            fontFamily: "Quicksand",
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
