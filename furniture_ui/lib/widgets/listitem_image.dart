import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListItemImage extends StatelessWidget {
  const ListItemImage({
    Key? key,
    required this.listItemHeight,
    required this.imgStr,
  }) : super(key: key);

  final double listItemHeight;
  final String imgStr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: listItemHeight,
      width: 35.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imgStr,
          ),
        ),
      ),
    );
  }
}
