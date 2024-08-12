import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color(0xFF3498db);
  static const Color secondaryColor = Color(0xFFe74c3c);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
      ),
      // Add more theme customizations here
    );
  }
}
