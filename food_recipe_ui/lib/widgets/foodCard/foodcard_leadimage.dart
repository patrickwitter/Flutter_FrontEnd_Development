import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FoodCardLeadImage extends StatelessWidget {
  const FoodCardLeadImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 30.h, minWidth: 30.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
