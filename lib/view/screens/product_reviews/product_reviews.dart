import 'package:ecommerce/view/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:ecommerce/view/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/products/rating/rating_indicator.dart';
import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Reviews & Ratings',
            style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: Sizes.spaceBtwItems),
              const OverallProductRating(text: '4.8'),
              const CustomRatingIndicator(rating: 4.5),
              Text('12121', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: Sizes.spaceBtwItems),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
