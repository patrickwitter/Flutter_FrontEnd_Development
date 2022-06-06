import 'package:flutter/material.dart';
import 'package:house_ui/utils/constants.dart';
import 'package:house_ui/widgets/BorderIcon.dart';

class DetailNavBar extends StatelessWidget {
  const DetailNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const BorderIcon(
            height: 50,
            width: 50,
            child: Icon(
              Icons.keyboard_backspace,
              color: COLOR_BLACK,
            ),
          ),
        ),
        const BorderIcon(
          height: 50,
          width: 50,
          child: Icon(
            Icons.favorite_border,
            color: COLOR_BLACK,
          ),
        ),
      ],
    );
  }
}
