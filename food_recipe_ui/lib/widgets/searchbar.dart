import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(.25.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.5), blurRadius: 10)
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search for recipes and channels",
          hintStyle: themeData.textTheme.subtitle2,
          contentPadding: EdgeInsets.all(3.w),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
