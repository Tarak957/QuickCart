import 'package:ecommerce/view/widgets/circular_container/circular_container.dart';
import 'package:ecommerce/view/widgets/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeHeaderContainer extends StatelessWidget {
  final Widget child;
  final double height;
  const HomeHeaderContainer({
    super.key,
    required this.child,
    this.height = 400,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: CustomColors.primaryPurple,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Positioned(
                top: -225,
                right: 225,
                child: CircularContainer(
                  backgroundColor: CustomColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: -225,
                right: -225,
                child: CircularContainer(
                  backgroundColor: CustomColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 225,
                right: 225,
                child: CircularContainer(
                  backgroundColor: CustomColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 225,
                right: -225,
                child: CircularContainer(
                  backgroundColor: CustomColors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
