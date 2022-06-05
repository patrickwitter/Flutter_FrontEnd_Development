import 'package:flutter/material.dart';
import 'package:furniture_ui/widgets/listitem_image.dart';
import 'package:furniture_ui/widgets/listitem_text.dart';
import 'package:sizer/sizer.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.listItemHeight,
    required this.imgStr,
    required this.isfav,
  }) : super(key: key);

  final double listItemHeight;
  final String imgStr;
  final bool isfav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
        horizontal: 2.w,
      ),
      child: Material(
        elevation: 3,
        child: Container(
          width: 100.w,
          height: listItemHeight,
          color: Colors.white,
          child: Row(
            children: [
              ListItemImage(listItemHeight: listItemHeight, imgStr: imgStr),
              ListItemText(isfav: isfav)
            ],
          ),
        ),
      ),
    );
  }
}
