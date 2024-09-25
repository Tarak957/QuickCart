import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:flutter/material.dart';

class UserProfileTile extends StatelessWidget {
  final VoidCallback? onPressed;
  const UserProfileTile({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RoundedImage(
        image: ImageStrings.user,
        width: 50,
        height: 50,
      ),
      title: Text(
        'Tarak',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: CustomColors.white),
      ),
      subtitle: Text(
        'tarak@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: CustomColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.edit,
          color: CustomColors.white,
        ),
      ),
    );
  }
}
