// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Open now until 7pm".toUpperCase(),
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrat",
          ),
        ),
        const Padding(
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
            const Text(
              "17th st & Union Sq East",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            const Icon(
              Icons.location_on,
              color: Colors.grey,
            ),
            const Text(
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
          height: 2.h,
        ),
        Row(
          children: [
            Icon(
              Icons.wifi,
              color: Colors.green[700],
            ),
            const SizedBox(
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
          height: 3.h,
          color: Colors.black,
          endIndent: 100.w - 100,
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
