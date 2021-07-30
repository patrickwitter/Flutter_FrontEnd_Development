import 'package:flutter/material.dart';

class TabRow extends StatelessWidget {
  const TabRow({
    Key? key,
    required this.scrWidth,
    required this.tabHeight,
  }) : super(key: key);

  final double scrWidth;
  final double tabHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: scrWidth,
      height: tabHeight,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TabItem(
              tabHeight: tabHeight,
              scrWidth: scrWidth,
              imgStr: "lib/assets/sofas.png",
              description: "Sofa",
            ),
            TabItem(
              tabHeight: tabHeight,
              scrWidth: scrWidth,
              imgStr: "lib/assets/wardrobe.png",
              description: "Wardrobe",
            ),
            TabItem(
              tabHeight: tabHeight,
              scrWidth: scrWidth,
              imgStr: "lib/assets/desks.png",
              description: "Desk",
            ),
            TabItem(
              tabHeight: tabHeight,
              scrWidth: scrWidth,
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
    required this.scrWidth,
    required this.imgStr,
    required this.description,
  }) : super(key: key);

  final double tabHeight;
  final double scrWidth;
  final String imgStr;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: tabHeight / 2,
          width: scrWidth / 7,
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
