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
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  (isfav
                      ? Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.grey,
                        )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Scandinavian small sized double sofa imported" +
                  "full leather / Dale Italia oil wax leather black",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Quicksand",
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xfffac83e),
                    padding: EdgeInsets.all(5.w),
                    child: Text(
                      "\$248",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xfffee16b),
                    padding: EdgeInsets.all(5.w),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  flex: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
