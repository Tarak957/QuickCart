import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/device/device_utilities.dart';
import 'package:flutter/material.dart';

class RatingProgressIndicator extends StatelessWidget {
  final String text;
  final double value;
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: DeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              borderRadius: BorderRadius.circular(8),
              backgroundColor: CustomColors.grey,
              valueColor: AlwaysStoppedAnimation(CustomColors.primaryPurple),
            ),
          ),
        )
      ],
    );
  }
}
