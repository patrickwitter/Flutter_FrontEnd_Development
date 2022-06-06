import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Alignment _alignment;
  final IconData _icon;

  const NavButton({
    Key? key,
    required Alignment alignmentPos,
    required IconData buttonIcon,
  })  : _alignment = alignmentPos,
        _icon = buttonIcon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: this._alignment,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
        ),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.7),
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              this._icon,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
