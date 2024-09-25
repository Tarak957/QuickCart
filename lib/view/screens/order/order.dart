import 'package:ecommerce/view/screens/order/widgets/orders_list.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
