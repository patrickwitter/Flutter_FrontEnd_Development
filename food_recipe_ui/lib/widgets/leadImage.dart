import 'package:flutter/material.dart';

class LeadImage extends StatelessWidget {
  const LeadImage({
    Key key,
    @required this.scrHeight,
  }) : super(key: key);

  final double scrHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(children: [
          Container(
            height: scrHeight * .35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("lib/assets/breakfast.jpg"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 10),
                ]),
          ),
          Positioned(
            top: (scrHeight / (2.3)) * .4,
            left: 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "best of".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "the day".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
