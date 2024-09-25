import 'package:ecommerce/view/screens/profile/address/widgets/add_new_address.dart';
import 'package:ecommerce/view/screens/profile/address/widgets/single_address.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(isAddressSelected: false),
              SingleAddress(isAddressSelected: true),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.to(() => const AddNewAddress());
        },
      ),
    );
  }
}
