import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    @required this.scrWidth,
  }) : super(key: key);

  final double scrWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.grey[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        width: scrWidth * .7,
        child: Row(
          children: [
            Container(
              constraints: BoxConstraints(minHeight: 100, minWidth: 100),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('lib/assets/balanced.jpg'),
                ),
              ),
            ),
            FoodCardInfo()
          ],
        ),
      ),
    );
  }
}

class FoodCardInfo extends StatelessWidget {
  const FoodCardInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Grilled Chicken",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "with Fruit Salad",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Container(
            width: 85,
            height: 2,
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
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('lib/assets/chris.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Patrick Witter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
