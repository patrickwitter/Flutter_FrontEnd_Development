import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomRightButton extends StatelessWidget {
  const BottomRightButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 12.5.h,
        width: 17.h,
        decoration: BoxDecoration(
          color: Colors.orange[800],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                ">",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Text(
                "Availabilty",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
