import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/containers/circular_container.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? CustomColors.white : null),
      avatar: isColor
          ? CircularContainer(
              height: 50,
              width: 50,
              backgroundColor: HelperFunctions.getColor(text)!,
            )
          : null,
      labelPadding: isColor ? EdgeInsets.zero : null,
      padding: isColor ? EdgeInsets.zero : null,
      shape: isColor ? const CircleBorder() : null,
      backgroundColor: isColor ? HelperFunctions.getColor(text)! : null,
      selectedColor: isColor ? HelperFunctions.getColor(text)! : null,
    );
  }
}
