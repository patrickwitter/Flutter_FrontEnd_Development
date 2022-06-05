import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  // ignore: use_key_in_widget_constructors
  const SelectedPhoto({
    Key? key,
    required this.numberOfDots,
    required this.photoIndex,
  });

  Widget _selectedPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 30, maxWidth: 30),
        width: 3.w,
        height: 3.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _unselectedPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 30, maxWidth: 30),
        width: 3.w,
        height: 3.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; i++) {
      dots.add((i == photoIndex) ? _selectedPhoto() : _unselectedPhoto());
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: dots,
    );
  }
}
