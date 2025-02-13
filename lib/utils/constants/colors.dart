import 'package:flutter/material.dart';

class TColors{
  TColors._();

  // App Basic Color
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Text Color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Color
  static const Color light = Color(0xFF6F6F6F);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Color
  static const Color white = Colors.white;
  static const Color lightContainer = Color(0xFF6F6F6F);
  static Color darkContainer = TColors.white.withOpacity(0.1);

  // Button Color
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);1
}