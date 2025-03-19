import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final double rating; // Rating value from 0.0 to 5.0
  final int starCount; // Number of stars to display
  final Color filledStarColor; // Color for filled stars
  final Color unfilledStarColor; // Color for unfilled stars

  const RatingStar({
    super.key,
    required this.rating,
    this.starCount = 5,
    this.filledStarColor = Colors.amber,
    this.unfilledStarColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];

    // Generate the stars
    for (int i = 0; i < starCount; i++) {
      if (i < rating) {
        stars.add(Icon(Icons.star, color: filledStarColor));
      } else if (i < rating + 0.5) {
        stars.add(Icon(Icons.star_half, color: filledStarColor));
      } else {
        stars.add(Icon(Icons.star_border, color: unfilledStarColor));
      }
    }

    return Row(
      children: stars,
    );
  }
}
