import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RateAndShare extends StatelessWidget {
  const RateAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 24,
                ),
                const SizedBox(height: Sizes.spaceBtwItems / 2),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: ' 5.0 ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const TextSpan(text: '(282)')
                    ],
                  ),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: Sizes.iconMd,
              ),
            )
          ],
        )
      ],
    );
  }
}
