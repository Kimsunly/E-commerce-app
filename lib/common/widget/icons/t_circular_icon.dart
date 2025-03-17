import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TCircularicon extends StatelessWidget {
  const TCircularicon({
    super.key,
    required this.dark,
    this.width,
    this.height,
    this.sizes = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final bool dark;
  final double? width, height, sizes;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunctions.isDarkMode(context)
                ? TColors.dark.withValues(alpha: 0.9)
                : TColors.white.withValues(alpha: 0.9),
        
      ),
      child: 
         IconButton(onPressed: onPressed, icon: Icon(icon, color: color,size: sizes,)),
    );
  }
}
