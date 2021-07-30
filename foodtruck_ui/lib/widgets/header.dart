import "package:flutter/material.dart";
import 'package:foodtruck_ui/widgets/selectedPhoto.dart';

class Header extends StatefulWidget {
  Header({
    Key? key,
    required this.scrHeight,
    required this.photos,
    required this.photoIndex,
    required this.scrWidth,
  }) : super(key: key);

  final double scrHeight;
  final List<String> photos;
  int photoIndex;
  double scrWidth;

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
          height: widget.scrHeight / 3,
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
          left: widget.scrWidth / 10,
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "4.0",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SelectedPhoto(
                    numberOfDots: widget.photos.length,
                    photoIndex: widget.photoIndex)
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: 15,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _increment(),
          child: Container(
            height: widget.scrHeight / 3,
            width: widget.scrWidth,
            color: Colors.transparent,
          ),
        ),
        GestureDetector(
          onTap: () => _decrement(),
          child: Container(
            height: widget.scrHeight / 3,
            width: widget.scrWidth / 2,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
