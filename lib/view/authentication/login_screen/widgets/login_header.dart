import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        const SizedBox(height: Sizes.appBarHeight / 2),
        SizedBox(
          width: HelperFunctions.screenWidth(),
          child: Image(
            image: AssetImage(
              dark
                  ? ImageStrings.splashScreenImageDark
                  : ImageStrings.splashScreenImageLight,
            ),
            height: 100,
          ),
        ),
        const SizedBox(height: Sizes.lg),
        Text(
          TextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: Sizes.sm),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
