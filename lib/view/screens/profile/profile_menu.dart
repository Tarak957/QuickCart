import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String title, value;
  final IconData icon;
  final VoidCallback onTap;
  const ProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Icons.arrow_forward_ios_rounded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(title, style: Theme.of(context).textTheme.bodySmall),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              icon,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
