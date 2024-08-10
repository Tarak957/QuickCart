import 'package:ecommerce/view/screens/sign_up/widgets/signup_form.dart';
import 'package:ecommerce/view/widgets/loginpage_widgets/custom_divider.dart';
import 'package:ecommerce/view/widgets/loginpage_widgets/social_button.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: dark ? CustomColors.white : CustomColors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          TextStrings.signupTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(height: Sizes.spaceBtwSections),
              const SignUpForm(),
              const SizedBox(height: Sizes.spaceBtwSections),
              CustomDivider(dividerText: TextStrings.orSignUpWith.capitalize!),
              const SizedBox(height: Sizes.spaceBtwSections),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
