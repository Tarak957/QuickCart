import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/device/device_utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leading;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  const CustomAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leading,
    this.actions,
    this.leadingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back),
              )
            : leading != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(leading),
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
