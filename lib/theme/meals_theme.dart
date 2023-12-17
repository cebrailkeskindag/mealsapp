import 'package:flutter/material.dart';
import 'package:mealsapp/theme/theme_data.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorLight.colorScheme,
      primaryColor: AppColorLight.colorScheme.primary,
      cardTheme: CardTheme(color: AppColorLight.boxColor),
      scaffoldBackgroundColor: AppColorLight.colorScheme.background,
      drawerTheme: DrawerThemeData(
          backgroundColor: AppColorLight.drawerBackgroundColor,
          surfaceTintColor: AppColorLight.textColor),
      primaryTextTheme:
          TextTheme(titleMedium: TextStyle(color: AppColorLight.textColor)),
      listTileTheme: ListTileThemeData(
          titleTextStyle: TextStyle(
            fontSize: 18.0,
            color: AppColorLight.drawerTextColor,
          ),
          iconColor: AppColorLight.iconColor),
      iconTheme: IconThemeData(color: AppColorLight.favoriteButtonColor),
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: AppColorLight.textColor)),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: AppColorLight.appBarBacgroundColor,
          iconTheme: IconThemeData(color: AppColorLight.favoriteButtonColor),
          titleTextStyle:
              TextStyle(color: AppColorLight.appBartextColor, fontSize: 22)),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              AppColorLight.drawerBackgroundColor),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              AppColorLight.elevatedButtonColor),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorDark.colorScheme,
      primaryColor: AppColorDark.colorScheme.primary,
      cardTheme: CardTheme(color: AppColorDark.boxColor),
      scaffoldBackgroundColor: AppColorDark.colorScheme.background,
      drawerTheme: DrawerThemeData(
          backgroundColor: AppColorDark.drawerBackgroundColor,
          surfaceTintColor: AppColorDark.textColor),
      listTileTheme: ListTileThemeData(
          titleTextStyle: TextStyle(
            fontSize: 18.0,
            color: AppColorDark.drawerTextColor,
          ),
          iconColor: AppColorDark.iconColor),
      iconTheme: IconThemeData(color: AppColorDark.favoriteButtonColor),
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: AppColorDark.textColor)),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: AppColorDark.appBarBacgroundColor,
          iconTheme: IconThemeData(color: AppColorDark.iconColor),
          titleTextStyle:
              TextStyle(color: AppColorDark.appBartextColor, fontSize: 22)),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              AppColorDark.drawerBackgroundColor),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              AppColorDark.elevatedButtonColor),
        ),
      ),
    );
  }
}
