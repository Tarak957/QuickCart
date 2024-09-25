import 'package:ecommerce/view/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/view/screens/checkout/widgets/billing_address.dart';
import 'package:ecommerce/view/screens/checkout/widgets/billing_payment.dart';
import 'package:ecommerce/view/screens/checkout/widgets/billing_amount.dart';
import 'package:ecommerce/view/screens/home/widgets/navigation_menu.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/products/cart/coupon_code.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/view/widgets/success_screen/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: Sizes.spaceBtwSections),
              const CouponCode(),
              const SizedBox(height: Sizes.spaceBtwSections),
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(Sizes.md),
                backgroundColor: dark ? CustomColors.black : CustomColors.white,
                child: const Column(
                  children: [
                    BillingAmount(),
                    SizedBox(height: Sizes.spaceBtwItems),
                    Divider(),
                    SizedBox(height: Sizes.spaceBtwItems),
                    BillingPayment(),
                    SizedBox(height: Sizes.spaceBtwItems),
                    BillingAddress()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: ImageStrings.successfulPaymentIcon,
              title: 'Payment Success!',
              subtitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: Text(
            'Checkout 300/-',
            style: TextStyle(
              color: dark ? CustomColors.black : CustomColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
