import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class TAppBarTheme{
  TAppBarTheme._();

// Light AppBar Theme //
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: TSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Colors.black, size: TSizes.iconMd),
    titleTextStyle: TextStyle( fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
  );

  // Dark AppBar Theme //
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: TSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Colors.white, size: TSizes.iconMd),
    titleTextStyle: TextStyle( fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  );
}