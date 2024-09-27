import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/containers/rounded_container.dart';
import 'package:flutter/material.dart';

class SingleAddress extends StatelessWidget {
  final bool isAddressSelected;
  const SingleAddress({
    super.key,
    required this.isAddressSelected,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(Sizes.md),
      backgroundColor: isAddressSelected
          ? CustomColors.primaryPurple.withOpacity(0.4)
          : CustomColors.transparent,
      borderColor: isAddressSelected
          ? CustomColors.dark
          : dark
              ? CustomColors.darkGrey
              : CustomColors.grey.withOpacity(0.4),
      margin: const EdgeInsets.only(bottom: Sizes.defaultSpace),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Text(
                    'Number',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      '12-651, hahahaha, ffffffff,hgfghfdgfdfgd, kurnool, Andhrapradesh',
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              if (isAddressSelected)
                Icon(
                  Icons.check_circle,
                  color: dark ? CustomColors.light : CustomColors.dark,
                )
            ],
          ),
        ],
      ),
    );
  }
}
