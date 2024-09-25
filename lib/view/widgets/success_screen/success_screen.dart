import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/spacing_styles/spacing_styles.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subtitle;
  final VoidCallback onPressed;
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingAppbarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: Sizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: dark ? CustomColors.black : CustomColors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
