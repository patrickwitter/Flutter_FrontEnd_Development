import 'package:flutter/material.dart';

class BurgerItem extends StatelessWidget {
  final double scrWidth;
  final double scrHeight;
  final String image;
  const BurgerItem(
      {Key? key,
      required this.scrWidth,
      required this.scrHeight,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: scrHeight / 7,
            width: scrWidth / 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  this.image,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Maple Mustard Tempeh",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Marinated kale, onion, tomato and roasted garlic by Patrick Witter",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$11.25",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
