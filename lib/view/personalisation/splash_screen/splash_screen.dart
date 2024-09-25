import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecommerce/view/personalisation/onboarding_screen/onboarding.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Get.off(
          () => const OnBoardingScreen(),
          transition: Transition.zoom,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              dark
                  ? ImageStrings.splashScreenImageDark
                  : ImageStrings.splashScreenImageLight,
              height: 100,
            ),
          ),
          const SizedBox(height: Sizes.defaultSpace),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Q u i c k C a r t",
                textStyle: TextStyle(
                  fontSize: 24,
                  color: dark ? CustomColors.white : CustomColors.primaryPurple,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 80),
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ],
      ),
    );
  }
}
