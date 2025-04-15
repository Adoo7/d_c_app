import 'package:d_c_app/src/core/shared/theme/colors.dart';
import 'package:d_c_app/src/core/shared/theme/text_styles.dart';
import 'package:flutter/material.dart';

// Light Theme
final ThemeData dcTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    onPrimary: lightTextColor,
    secondary: secondaryColor,
    onSecondary: onSecondaryColor,
    error: errorColor,
    onError: onErrorColor,
    background: surfaceColor,
    onBackground: onSurfaceColor,
    surface: surfaceColor,
    onSurface: onSurfaceColor,
  ),
  scaffoldBackgroundColor: surfaceColor,
  cardTheme: CardTheme(
    color: cardColor,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: lightTextColor,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: lightTextColor,
      elevation: 2,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: darkTextColor),
    displayMedium: TextStyle(color: darkTextColor),
    displaySmall: TextStyle(color: darkTextColor),
    headlineLarge: TextStyle(color: darkTextColor),
    headlineMedium: TextStyle(color: darkTextColor),
    headlineSmall: TextStyle(color: darkTextColor),
    titleLarge: TextStyle(color: darkTextColor),
    titleMedium: TextStyle(color: darkTextColor),
    titleSmall: TextStyle(color: darkTextColor),
    bodyLarge: TextStyle(color: darkTextColor),
    bodyMedium: TextStyle(color: darkTextColor),
    bodySmall: TextStyle(color: darkTextColor),
  ),
);

// Dark Theme
final ThemeData dcDarkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    primary: primaryColorLight,
    onPrimary: lightTextColor,
    secondary: secondaryColorDark,
    onSecondary: onSecondaryColorDark,
    error: errorColor,
    onError: onErrorColor,
    background: surfaceColorDark,
    onBackground: onSurfaceColorDark,
    surface: surfaceColorDark,
    onSurface: onSurfaceColorDark,
  ),
  scaffoldBackgroundColor: surfaceColorDark,
  cardTheme: CardTheme(
    color: cardColorDark,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColorDark,
    foregroundColor: lightTextColor,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColorLight,
      foregroundColor: lightTextColor,
      elevation: 2,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: lightTextColor),
    displayMedium: TextStyle(color: lightTextColor),
    displaySmall: TextStyle(color: lightTextColor),
    headlineLarge: TextStyle(color: lightTextColor),
    headlineMedium: TextStyle(color: lightTextColor),
    headlineSmall: TextStyle(color: lightTextColor),
    titleLarge: TextStyle(color: lightTextColor),
    titleMedium: TextStyle(color: lightTextColor),
    titleSmall: TextStyle(color: lightTextColor),
    bodyLarge: TextStyle(color: lightTextColor),
    bodyMedium: TextStyle(color: lightTextColor),
    bodySmall: TextStyle(color: lightTextColor),
  ),
);
