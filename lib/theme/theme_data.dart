import 'package:flutter/material.dart';

class AppColorLight {
  static ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF6514C8),
    primary: const Color(0xFF6514C8),
    secondary: const Color(0xFFFFFFFF),
    background: const Color(0xFFFFFFFF),
    surface: const Color(0xFF000000),
  );
  static Color textColor = const Color(0xFF000000);
  static Color iconColor = const Color(0xFFFE4657);
  static Color boxColor = const Color(0xFFA4B4BF);
  static Color favoriteButtonColor = const Color(0xFFFE4657);
  static Color appBarBacgroundColor = const Color(0xFFFFFFFF);
  static Color appBartextColor = const Color(0xFF000000);
  static Color elevatedButtonColor = const Color(0xFF000000);
  static Color drawerBackgroundColor = const Color(0xFFFFFFFF);
  static Color drawerTextColor = const Color(0xFF000000);
}

class AppColorDark {
  static ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF6514C8),
    primary: const Color.fromARGB(255, 38, 7, 76),
    secondary: const Color(0xFFFFFFFF),
    background: const Color(0xFF010827),
    surface: const Color(0xFFFFFFFF),
  );
  static Color textColor = const Color(0xFF000000);
  static Color iconColor = const Color(0xFFFFFFFF);
  static Color favoriteButtonColor = const Color(0xFFFE4657);
  static Color boxColor = const Color(0xFFFFFFFF);
  static Color appBarBacgroundColor = const Color(0xFF010827);
  static Color appBartextColor = const Color(0xFFFFFFFF);
  static Color elevatedButtonColor = const Color(0xFFFFFFFF);
  static Color drawerBackgroundColor = const Color(0xFF010827);
  static Color drawerTextColor = const Color(0xFFFFFFFF);
}
