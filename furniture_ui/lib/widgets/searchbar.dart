import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.headerHeight,
  }) : super(key: key);

  final double headerHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      width: 100.w,
      height: headerHeight / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: themeData.cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.7),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: themeData.textTheme.subtitle1,
          contentPadding: EdgeInsets.all(5.w),
          prefixIcon: Icon(
            Icons.search,
            color: themeData.primaryColor,
          ),
        ),
      ),
    );
  }
}
