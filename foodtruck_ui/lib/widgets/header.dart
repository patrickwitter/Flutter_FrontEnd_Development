import "package:flutter/material.dart";
import 'package:foodtruck_ui/widgets/header_nav.dart';
import 'package:sizer/sizer.dart';
import 'package:foodtruck_ui/widgets/header_rowicons.dart';

class Header extends StatefulWidget {
  Header({
    Key? key,
    required this.photos,
    required this.photoIndex,
  }) : super(key: key);

  final List<String> photos;
  int photoIndex;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  void _increment() {
    setState(() {
      widget.photoIndex = (widget.photoIndex < widget.photos.length - 1)
          ? widget.photoIndex += 1
          : widget.photoIndex;
    });
  }

  void _decrement() {
    setState(() {
      widget.photoIndex = (widget.photoIndex > 0) ? widget.photoIndex -= 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 33.33.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                widget.photos[widget.photoIndex],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          left: 10.w,
          bottom: 3.h,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: RowIcons(
              photoIndex: widget.photoIndex,
              photosLength: widget.photos.length,
            ),
          ),
        ),
        Positioned.fill(
          top: 2.5.h,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(2.w),
              child: const HeaderNav(),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _increment(),
          child: Container(
            height: 33.33.h,
            width: 100.w,
            color: Colors.transparent,
          ),
        ),
        GestureDetector(
          onTap: () => _decrement(),
          child: Container(
            height: 33.33.h,
            width: 50.w,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
