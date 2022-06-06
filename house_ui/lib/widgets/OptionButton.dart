import 'package:flutter/material.dart';
import 'package:house_ui/utils/constants.dart';
//import 'package:house_ui/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton(
      {Key? key, required this.text, required this.icon, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      // ignore: deprecated_member_use
      child: FlatButton(
          color: COLOR_DARK_BLUE,
          splashColor: Colors.white.withAlpha(55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: COLOR_WHITE,
              ),
              Text(
                text,
                style: const TextStyle(color: COLOR_WHITE),
              )
            ],
          )),
    );
  }
}
