import 'package:flutter/material.dart';

class HeaderNav extends StatelessWidget {
  const HeaderNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.arrow_back_ios_new,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite_border_rounded,
          size: 30,
          color: Colors.red,
        ),
      ],
    );
  }
}
