import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TextStrings.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TextStrings.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark
                          ? CustomColors.white
                          : CustomColors.primaryPurple,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? CustomColors.white
                          : CustomColors.primaryPurple,
                    ),
              ),
              TextSpan(
                text: ' ${TextStrings.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark
                          ? CustomColors.white
                          : CustomColors.primaryPurple,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? CustomColors.white
                          : CustomColors.primaryPurple,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
