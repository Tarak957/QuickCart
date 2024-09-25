import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Add new Address',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Phone Number',
                  ),
                ),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.home),
                          labelText: 'Building',
                        ),
                      ),
                    ),
                    const SizedBox(width: Sizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.pin),
                          labelText: 'Postal Code',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                          labelText: 'City',
                        ),
                      ),
                    ),
                    const SizedBox(width: Sizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.map),
                          labelText: 'State',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.language),
                    labelText: 'Country',
                  ),
                ),
                const SizedBox(height: Sizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: dark ? Colors.black : Colors.white,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
