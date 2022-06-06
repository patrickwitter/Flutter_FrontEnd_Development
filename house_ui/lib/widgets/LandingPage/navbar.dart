import 'package:flutter/material.dart';
import 'package:house_ui/utils/constants.dart';
import 'package:house_ui/widgets/BorderIcon.dart';

class LandingNavBar extends StatelessWidget {
  const LandingNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BorderIcon(
          height: 50,
          width: 50,
          child: Icon(
            Icons.menu,
            color: COLOR_BLACK,
          ),
        ),
        BorderIcon(
          height: 50,
          width: 50,
          child: Icon(
            Icons.settings,
            color: COLOR_BLACK,
          ),
        ),
      ],
    );
  }
}
