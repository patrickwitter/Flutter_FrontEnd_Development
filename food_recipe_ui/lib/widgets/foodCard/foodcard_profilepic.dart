import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FoodCardProfilePic extends StatelessWidget {
  const FoodCardProfilePic({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 6.h, minWidth: 6.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
