import 'package:d_c_app/src/core/shared/theme/colors.dart';
import 'package:d_c_app/src/core/shared/theme/text_styles.dart';
import 'package:flutter/material.dart';

// Light Theme
ThemeData dcTheme = ThemeData(
  primaryColor: primaryColor,
  splashColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor.withBlue(100))),
  ),
  textTheme: TextTheme(
    // Titles
    titleLarge: titleLargeTextStyle,

    // Labels
    labelSmall: labelSmallTextStyle,
    labelMedium: labelMediumTextStyle,
    labelLarge: labelLargeTextStyle,

    // Body Text
    bodyMedium: bodyMediumTextStyle,
  ),
  inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: lightTextColor,
      textStyle: labelMediumTextStyle,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: primaryColor.withBlue(100),
    ),
  ),
);

// Dark Theme
var dcDarkTheme = ThemeData(
  primaryColor: primaryColorDark,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    // Titles
    titleLarge: titleLargeTextStyle.copyWith(color: lightTextColor),

    // Labels
    labelSmall: labelSmallTextStyle.copyWith(color: lightTextColor),
    labelMedium: labelMediumTextStyle.copyWith(color: lightTextColor),
    labelLarge: labelLargeTextStyle.copyWith(color: lightTextColor),

    // Body Text
    bodyMedium: bodyMediumTextStyle.copyWith(color: lightTextColor),
  ),
  inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: lightTextColor,
      textStyle: labelSmallTextStyle.copyWith(color: lightTextColor),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: primaryColorDark,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(lightTextColor),
      backgroundColor: WidgetStateProperty.all(primaryColorDark),
    ),
  ),
);
