import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      key: const Key("NavBar"),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 100, maxWidth: 100),
          height: 15.w,
          width: 15.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.white,
              width: 2,
            ),
            image: const DecorationImage(
                image: AssetImage("lib/assets/chris.jpg"), fit: BoxFit.cover),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 100, maxWidth: 100),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 12.w,
          ),
        )
      ],
    );
  }
}
