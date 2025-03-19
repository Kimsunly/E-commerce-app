import 'dart:core';

import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularimage extends StatelessWidget {
  const TCircularimage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNextWorkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNextWorkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (THelperFunctions.isDarkMode(context)? TColors.dark : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
          child: Image(
          fit: fit,
          image: isNextWorkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
            color: overlayColor,
          ),

      ),

    );
  }
}
