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
    return Container(
      width: 100.w,
      height: headerHeight / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.all(20),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xfffee16b),
          ),
        ),
      ),
    );
  }
}
