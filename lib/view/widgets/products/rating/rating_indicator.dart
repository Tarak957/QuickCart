import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingIndicator extends StatelessWidget {
  final double rating;
  const CustomRatingIndicator({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: CustomColors.grey,
      itemBuilder: (_, __) => Icon(
        Icons.star,
        color: CustomColors.primaryPurple,
      ),
    );
  }
}
