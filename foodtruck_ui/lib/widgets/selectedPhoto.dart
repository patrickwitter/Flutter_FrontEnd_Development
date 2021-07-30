import 'package:flutter/material.dart';

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({required this.numberOfDots, required this.photoIndex});

  Widget _selectedPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 10,
        height: 10,
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
        width: 10,
        height: 10,
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
      children: dots,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}
