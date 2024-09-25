import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/view/widgets/products/rating/rating_indicator.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(ImageStrings.userProfileImage1),
                ),
                const SizedBox(width: Sizes.spaceBtwItems),
                Text('user', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          children: [
            const CustomRatingIndicator(rating: 4),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text('01/01/2002', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly.Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: CustomColors.primaryPurple,
          ),
          lessStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: CustomColors.primaryPurple,
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        RoundedContainer(
          backgroundColor:
              dark ? CustomColors.dark : CustomColors.grey.withOpacity(0.4),
          child: Padding(
            padding: const EdgeInsets.all(Sizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'data',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '01/01/2002',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly.Great job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: '   Show less',
                  trimCollapsedText: '   Show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.primaryPurple,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.primaryPurple,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems),
      ],
    );
  }
}
