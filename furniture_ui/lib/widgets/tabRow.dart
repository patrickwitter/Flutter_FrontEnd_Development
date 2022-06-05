import 'package:flutter/material.dart';
import 'package:furniture_ui/widgets/tabitem.dart';
import 'package:sizer/sizer.dart';

class TabRow extends StatelessWidget {
  const TabRow({
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
