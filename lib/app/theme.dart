import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primarySwatch: primaryBlack,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      primarySwatch: primaryBlack,
    );
  }

  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFFb29ac8),
      100: Color(0xFFa285bd),
      200: Color(0xFF9371b2),
      300: Color(0xFF835da7),
      400: Color(0xFF74499c),
      500: Color(_blackPrimaryValue),
      600: Color(0xff5a2f82),
      700: Color(0xFF502a74),
      800: Color(0xFF462565),
      900: Color(0xFF3c1f57),
    },
  );
  static const int _blackPrimaryValue = 0xFF653591;
}
