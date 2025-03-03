import 'package:e_commerce_app/common/widget/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
            Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
            child,
          ],
        ),
      ),
    );
  }
}
