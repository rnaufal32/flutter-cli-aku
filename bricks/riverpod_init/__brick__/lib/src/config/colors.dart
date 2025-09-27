import 'package:flutter/material.dart';

abstract class MyColors {
  // Base colors
  static Color get background => const Color(0xFFEFF0F6);
  static Color get primary => const Color(0xFF3E64FF);
  static Color get secondary => const Color(0xFF5A5A5A);
  static Color get accent => const Color(0xFF00D9F6);

  // Text colors
  static Color get textPrimary => const Color(0xFF2C2C2C);
  static Color get textSecondary => const Color(0xFF757575);
  static Color get textLight => const Color(0xFFFFFFFF);

  // Status colors
  static Color get success => const Color(0xFF4CAF50);
  static Color get warning => const Color(0xFFFFC107);
  static Color get error => const Color(0xFFFF3B30);
  static Color get info => const Color(0xFF2196F3);

  // Surface colors
  static Color get card => const Color(0xFFFFFFFF);
  static Color get divider => const Color(0xFFE0E0E0);
  static Color get shadow => const Color(0x1A000000);

  // Dark theme variations
  static Color get backgroundDark => const Color(0xFF121212);
  static Color get primaryDark => const Color(0xFF738AFF);
  static Color get cardDark => const Color(0xFF2C2C2C);
}
