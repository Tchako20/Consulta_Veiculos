import 'package:flutter/material.dart';
import 'package:layout/src/themes/theme_colors.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  cardColor: Colors.white,
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 14,
      color: ThemeColors.text,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: ThemeColors.text,
    ),
    bodyLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: ThemeColors.text,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: ThemeColors.text,
    ),
  ),
);
