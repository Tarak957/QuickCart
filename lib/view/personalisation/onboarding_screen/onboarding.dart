import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:ecommerce/view/personalisation/onboarding_screen/widgets/onboarding_items.dart';
import 'package:ecommerce/view/personalisation/onboarding_screen/widgets/onboarding_navigation.dart';
import 'package:ecommerce/view/personalisation/onboarding_screen/widgets/onboarding_next_button.dart';
import 'package:ecommerce/view/personalisation/onboarding_screen/widgets/onboarding_skip.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingcontroller = Get.find<OnboardingController>();
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onBoardingcontroller.pageController,
            onPageChanged: onBoardingcontroller.updatePageIndicator,
            children: const [
              OnBoardingItems(
                image: ImageStrings.onBoardingGif1,
                title: TextStrings.onBoardingTitle1,
                subTitle: TextStrings.onBoardingSubTitle1,
              ),
              OnBoardingItems(
                image: ImageStrings.onBoardingGif2,
                title: TextStrings.onBoardingTitle2,
                subTitle: TextStrings.onBoardingSubTitle2,
              ),
              OnBoardingItems(
                image: ImageStrings.onBoardingGif3,
                title: TextStrings.onBoardingTitle3,
                subTitle: TextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnboardingSkip(),
          OnBoardingNavigation(
            pageController: onBoardingcontroller.pageController,
            onDotClicked: onBoardingcontroller.dotNavigationClick,
          ),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
