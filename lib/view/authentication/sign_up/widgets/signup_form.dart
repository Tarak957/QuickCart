import 'package:ecommerce/view/authentication/sign_up/verify_email.dart';
import 'package:ecommerce/view/authentication/sign_up/widgets/terms_and_conditions.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.firstName,
              prefixIcon: Icon(Icons.person_outlined),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.lastName,
              prefixIcon: Icon(Icons.person_outlined),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.username,
              prefixIcon: Icon(Icons.edit),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.email,
              prefixIcon: Icon(Icons.mail_outline_rounded),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.phoneNo,
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: TextStrings.password,
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwSections),
          const TermsAndConditions(),
          const SizedBox(height: Sizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const VerifyEmail());
              },
              child: Text(
                TextStrings.createAccount,
                style: TextStyle(
                  color: dark ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
