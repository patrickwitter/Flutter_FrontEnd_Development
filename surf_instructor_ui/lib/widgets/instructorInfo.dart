import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surf_instructor_ui/models/instructor.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

// Covers the bottom half of the instructor details pages
// Conatains the instructor information rating etc.

class InstructorInfo extends StatelessWidget {
  const InstructorInfo({
    Key? key,
    required this.instructor,
  }) : super(key: key);

  final Instructor instructor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 100.w,
        height: 100.h * (1 / 3) + 25,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: InstructorDetails(
          instructor: instructor,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class InstructorDetails extends StatelessWidget {
  InstructorDetails({
    required Instructor instructor,
    Key? key,
  }) : super(key: key) {
    _instructor = instructor;
  }
  late Instructor _instructor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _instructor.instructorName,
            style: GoogleFonts.merriweather(
              textStyle: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Santa Monica CA",
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          StarRatingAndReviews(instructor: _instructor),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Hello, My name is ${_instructor.instructorName.split(" ")[0]}! I am from Santa Monica, California.'
            "I have more than 10 years of experience as a surf instructor "
            'and would love to help you...',
            style: const TextStyle(
              height: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: const Text("Read more",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          const ReviewsAndPrograms()
        ],
      ),
    );
  }
}

class StarRatingAndReviews extends StatelessWidget {
  //Contains Star rating and number of reviews for the instructor
  const StarRatingAndReviews({
    Key? key,
    required Instructor instructor,
  })  : _instructor = instructor,
        super(key: key);

  final Instructor _instructor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmoothStarRating(
          isReadOnly: true,
          rating: double.parse(_instructor.rating),
          color: Colors.orange,
          borderColor: Colors.orange,
          size: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          _instructor.rating,
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "(200 Reviews)",
          style: TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class ReviewsAndPrograms extends StatelessWidget {
  //Contains the number of reviews and programs for the instructor
  const ReviewsAndPrograms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "200",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Reviews",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "4",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Programs",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
