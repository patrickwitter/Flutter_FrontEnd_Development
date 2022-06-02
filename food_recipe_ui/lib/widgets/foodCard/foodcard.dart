import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets/foodCard/foodcard_leadimage.dart';
import 'package:food_recipe_ui/widgets/foodCard/foodcardinfo.dart';
import 'package:sizer/sizer.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.grey[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(3.w),
        constraints: BoxConstraints(minWidth: 70.w),
        child: Row(
          children: [
            FoodCardLeadImage(
              image: 'lib/assets/balanced.jpg',
            ),
            FoodCardInfo()
          ],
        ),
      ),
    );
  }
}
