import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/view/widgets/icons/circular_icons.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class ProductDetailsImageSlider extends StatelessWidget {
  const ProductDetailsImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? CustomColors.darkGrey : CustomColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(Sizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(ImageStrings.productImage5),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   right: 0,
            //   bottom: 30,
            //   left: 0,
            //   child: SizedBox(
            //     height: 80,
            //     child: ListView.builder(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       physics: const AlwaysScrollableScrollPhysics(),
            //       itemCount: 6,
            //       itemBuilder: (_, index) {
            //         return Padding(
            //           padding:
            //               const EdgeInsets.symmetric(horizontal: 8),
            //           child: RoundedImage(
            //             image: ImageStrings.productImage3,
            //             width: 80,
            //             backgroundColor: dark
            //                 ? CustomColors.dark
            //                 : CustomColors.white,
            //             border: Border.all(
            //                 color: CustomColors.primaryPurple),
            //             padding: const EdgeInsets.all(Sizes.sm),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            Positioned(
              right: 0,
              bottom: 40,
              left: Sizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: Sizes.spaceBtwItems),
                  itemBuilder: (_, index) {
                    return RoundedImage(
                      image: ImageStrings.productImage3,
                      width: 80,
                      backgroundColor:
                          dark ? CustomColors.dark : CustomColors.white,
                      border: Border.all(color: CustomColors.primaryPurple),
                      padding: const EdgeInsets.all(Sizes.sm),
                    );
                  },
                ),
              ),
            ),
            CustomAppBar(
              showBackArrow: true,
              actions: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: dark ? CustomColors.dark : CustomColors.light,
                  ),
                  child: const CircularIcon(
                    icon: Icons.favorite,
                    color: CustomColors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
