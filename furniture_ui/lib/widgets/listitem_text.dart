import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListItemText extends StatelessWidget {
  const ListItemText({
    Key? key,
    required this.isfav,
  }) : super(key: key);

  final bool isfav;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FinNavian",
                    style: themeData.textTheme.headline4,
                  ),
                  (isfav
                      ? const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.grey,
                        )),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Scandinavian small sized double sofa imported"
              "full leather / Dale Italia oil wax leather black",
              style: themeData.textTheme.bodyText2,
            ),
            SizedBox(
              height: .5.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    color: themeData.canvasColor,
                    padding: EdgeInsets.all(5.w),
                    child: Text(
                      "\$248",
                      style: themeData.textTheme.caption,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    color: themeData.primaryColor,
                    padding: EdgeInsets.all(5.w),
                    child: Text(
                      "Add to cart",
                      style: themeData.textTheme.caption,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
