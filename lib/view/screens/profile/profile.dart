import 'package:ecommerce/view/screens/profile/profile_menu.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const RoundedImage(
                      image: ImageStrings.user,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: Sizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              ProfileMenu(
                title: 'Name',
                value: 'Tarakeswar',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'UserName',
                value: 'Tarak_eswar',
                onTap: () {},
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              ProfileMenu(
                title: 'User ID',
                value: '1234',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'E-Mail',
                value: 'tarak@gmail.com',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '1234567890',
                onTap: () {},
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: CustomColors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
