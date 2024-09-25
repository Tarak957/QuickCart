import 'package:ecommerce/view/authentication/password/reset_password.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            Text(
              TextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            Text(
              TextStrings.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Sizes.spaceBtwSections * 2),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                  labelText: TextStrings.email),
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(const ResetPassword()),
                child: Text(
                  TextStrings.submit,
                  style: TextStyle(
                    color: dark ? Colors.black : Colors.white,
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
