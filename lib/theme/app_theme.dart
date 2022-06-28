import 'package:flutter/material.dart';

const Map<dynamic, dynamic> colors = {
  "primary": {
    100: Color(0xFF787878),
    200: Color(0xFF5E5E5E),
    300: Color(0xFF454545),
    400: Color(0xFF2B2B2B),
    500: Color(0xFF121212),
  },
  "secondary": {
    100: Color(0xFFDCFEEA),
    200: Color(0xFFAAFDCD),
    300: Color(0xFF79FCAF),
    400: Color(0xFF47FA92),
    500: Color(0xFF15F974),
  },
  "figma": {
    100: Color(0xFF4E4E4E),
    200: Color(0xFF0F2026),
    300: Color(0xFFC9D9E1),
    400: Color(0xFFF1F8FB),
    500: Color(0xFFD94A3D),
  },
};

class AppTheme {
  static const Color primary = Color(0xFF6F35A5);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: colors['figma'][200],
    cardColor: colors['figma'][400],
    appBarTheme: AppBarTheme(color: colors['figma'][200], elevation: 100),
    scaffoldBackgroundColor: colors['figma'][300],
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: colors['figma'][200],
    appBarTheme: AppBarTheme(color: colors['figma'][200], elevation: 100),
    scaffoldBackgroundColor: colors['figma'][300],
  );
}
