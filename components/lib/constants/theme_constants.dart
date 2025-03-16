import 'package:flutter/material.dart';

class ThemeConstants {
  // Colors
  static const Color primaryBlue = Color(0xFF35478E);
  static const Color inputBackground = Color(0xFFF0F0F0);
  static const Color requiredRed = Color(0xFFFF0000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Text Styles
  static const TextStyle titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto Mono',
    color: black,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto Mono',
    color: black,
  );

  static const TextStyle smallText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: 'Roboto Mono',
    color: black,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto Mono',
    color: white,
  );

  // Dimensions
  static const double defaultPadding = 16.0;
  static const double borderRadius = 10.0;
  static const double inputHeight = 46.0;
  static const double buttonHeight = 50.0;
}