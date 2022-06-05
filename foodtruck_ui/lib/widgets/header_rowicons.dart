import 'package:flutter/material.dart';
import 'package:foodtruck_ui/widgets/selectedPhoto.dart';
import 'package:sizer/sizer.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({
    Key? key,
    required this.photosLength,
    required this.photoIndex,
  }) : super(key: key);

  final int photosLength;
  final int photoIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.orange,
        ),
        const Icon(
          Icons.star,
          color: Colors.orange,
        ),
        const Icon(
          Icons.star,
          color: Colors.orange,
        ),
        const Icon(
          Icons.star,
          color: Colors.orange,
        ),
        SizedBox(
          width: 3.w,
        ),
        const Text(
          "4.0",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        SelectedPhoto(
          numberOfDots: photosLength,
          photoIndex: photoIndex,
        )
      ],
    );
  }
}
