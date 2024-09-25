import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  const SettingsTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: CustomColors.primaryPurple,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
