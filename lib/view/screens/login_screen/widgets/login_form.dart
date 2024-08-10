import 'package:ecommerce/view/screens/home/widgets/navigation_menu.dart';
import 'package:ecommerce/view/screens/password/forgot_password.dart';
import 'package:ecommerce/view/screens/sign_up/signup.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                    labelText: TextStrings.email),
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
              const SizedBox(height: Sizes.spaceBtwInputFields / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(width: Sizes.spaceBtwInputFields / 3),
                      Text(
                        TextStrings.rememberMe,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => const ForgotPassword()),
                    child: Text(
                      TextStrings.forgetPassword,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwInputFields),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const NavigationMenu()),
            child: Text(
              TextStrings.signIn,
              style: TextStyle(
                color: dark ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Get.to(() => const SignUpScreen()),
            child: Text(
              TextStrings.createAccount,
              style: TextStyle(
                color: dark ? CustomColors.white : CustomColors.primaryPurple,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
