import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/device/device_utilities.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const CustomTabBar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? CustomColors.black : CustomColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CustomColors.primaryPurple,
        labelColor: dark ? CustomColors.white : CustomColors.primaryPurple,
        unselectedLabelColor: CustomColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
