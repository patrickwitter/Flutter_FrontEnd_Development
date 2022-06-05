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
    ThemeData themeData = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
        horizontal: 2.w,
      ),
      child: Material(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.only(
            bottom: 2.w,
          ),
          constraints: BoxConstraints(minHeight: listItemHeight),
          width: 100.w,
          color: themeData.cardColor,
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
