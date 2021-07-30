import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.scrWidth,
    required this.listItemHeight,
    required this.imgStr,
    required this.isfav,
  }) : super(key: key);

  final double scrWidth;
  final double listItemHeight;
  final String imgStr;
  final bool isfav;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      child: Material(
        elevation: 3,
        child: Container(
          width: scrWidth,
          height: listItemHeight,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                height: listItemHeight,
                width: scrWidth * .4,
                // color: Colors.red,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imgStr,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
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
                              color: HexColor("#fac83e"),
                              height: 40,
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
                              color: HexColor("#fee16b"),
                              height: 40,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
