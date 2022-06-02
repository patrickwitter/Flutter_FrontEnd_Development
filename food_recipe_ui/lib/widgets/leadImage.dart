import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LeadImage extends StatelessWidget {
  const LeadImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(3),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(children: [
          Container(
            constraints: BoxConstraints(minHeight: 35.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("lib/assets/breakfast.jpg"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 10),
                ]),
          ),
          Positioned(
            top: 10.h,
            left: 5.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "best of".toUpperCase(),
                  style: themeData.textTheme.headline1,
                ),
                Text(
                  "the day".toUpperCase(),
                  style: themeData.textTheme.headline1,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
