import 'package:flutter/material.dart';
import 'package:house_ui/utils/custom_functions.dart';
import 'package:house_ui/utils/widget_functions.dart';
import 'package:house_ui/widgets/BorderIcon.dart';

class DetailHeaderText extends StatelessWidget {
  const DetailHeaderText({
    Key? key,
    required this.itemData,
    required this.themeData,
  }) : super(key: key);

  final dynamic itemData;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formatCurrency(itemData["amount"]),
              style: themeData.textTheme.headline1,
            ),
            addVerticalSpace(5),
            Text(
              "\$${itemData["address"]}",
              style: themeData.textTheme.subtitle2,
            ),
          ],
        ),
        BorderIcon(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Text(
            "20 Hours ago",
            style: themeData.textTheme.headline5,
          ),
        )
      ],
    );
  }
}
