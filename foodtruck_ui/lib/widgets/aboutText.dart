import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
    required this.scrWidth,
  }) : super(key: key);

  final double scrWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Open now until 7pm".toUpperCase(),
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrat",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "The Cinnamon Snail",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "17th st & Union Sq East",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.location_on,
              color: Colors.grey,
            ),
            Text(
              "400ft Away",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.wifi,
              color: Colors.green[700],
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Location confirmed by 3 users today",
              style: TextStyle(
                color: Colors.green[700],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Divider(
          height: 30,
          color: Colors.black,
          endIndent: scrWidth - 100,
        ),
        Text(
          "featured Items".toUpperCase(),
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
