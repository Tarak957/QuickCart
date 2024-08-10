import 'package:ecommerce/view/widgets/loginpage_widgets/custom_divider.dart';
import 'package:ecommerce/view/widgets/loginpage_widgets/social_button.dart';
import 'package:ecommerce/view/screens/login_screen/widgets/login_header.dart';
import 'package:ecommerce/view/screens/login_screen/widgets/login_form.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/widgets/spacing_styles/spacing_styles.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingAppbarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              const SizedBox(height: Sizes.appBarHeight / 2),
              const LoginForm(),
              const SizedBox(height: Sizes.spaceBtwSections),
              CustomDivider(dividerText: TextStrings.orSignInWith.capitalize!),
              const SizedBox(height: Sizes.spaceBtwSections),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
