import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
// Contains header portion of the app which has title , navigation buttons and search bar

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_rounded),
            Icon(Icons.menu),
          ],
        ),
        SizedBox(height: 2.h),
        Padding(
          padding: EdgeInsets.only(bottom: 2.h),
          child: Row(
            children: [
              Text(
                "Santa Monica, CA",
                style: GoogleFonts.tinos(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 40,
              )
            ],
          ),
        ),
        Text(
          "Best Surfing Instructor in Santa Monica, California",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Search",
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
            prefixIcon: Icon(Icons.search_rounded),
            suffixIcon: Icon(Icons.filter_alt_outlined),
          ),
        )
      ],
    );
  }
}
