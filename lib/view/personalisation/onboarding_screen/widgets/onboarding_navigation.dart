import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/device/device_utilities.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  final PageController pageController;
  final void Function(int)? onDotClicked;
  const OnBoardingNavigation({
    super.key,
    required this.pageController,
    this.onDotClicked,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: Sizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: SwapEffect(
          activeDotColor:
              dark ? CustomColors.white : CustomColors.primaryPurple,
          dotHeight: 10,
          dotWidth: 10,
        ),
        controller: pageController,
        onDotClicked: onDotClicked,
        count: 3,
      ),
    );
  }
}
