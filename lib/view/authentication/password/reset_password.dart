import 'package:ecommerce/view/authentication/login_screen/login.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            Image.asset(
              ImageStrings.verifyEmail,
              width: HelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
            Text(
              TextStrings.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            Text(
              TextStrings.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const LoginScreen()),
                child: Text(
                  TextStrings.done,
                  style: TextStyle(
                    color: dark ? CustomColors.black : CustomColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  TextStrings.resendEmail,
                  style: TextStyle(
                    color:
                        dark ? CustomColors.white : CustomColors.primaryPurple,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
