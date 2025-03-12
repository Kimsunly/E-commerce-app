import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TShadowStyle {

  static final verticalProductshadow = BoxShadow(
    color: TColors.darkerGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0,2)
  );

  static final horizontalProductshadow = BoxShadow(
      color: TColors.darkerGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0,2)
  );

}