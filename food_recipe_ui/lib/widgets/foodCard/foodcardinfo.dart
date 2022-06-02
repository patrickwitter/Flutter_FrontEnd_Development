import 'package:flutter/material.dart';
import 'package:food_recipe_ui/widgets/foodCard/foodcard_profilepic.dart';
import 'package:sizer/sizer.dart';

class FoodCardInfo extends StatelessWidget {
  const FoodCardInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Grilled Chicken",
          style: themeData.textTheme.bodyText1,
        ),
        Text(
          "with Fruit Salad",
          style: themeData.textTheme.bodyText1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Container(
            width: 20.w,
            height: .5.h,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: Colors.amber,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
        Row(
          children: [
            FoodCardProfilePic(
              image: 'lib/assets/chris.jpg',
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Patrick Witter",
              style: themeData.textTheme.bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}
