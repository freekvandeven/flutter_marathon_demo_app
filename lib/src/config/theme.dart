import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Color(0xFF1164ea),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF1164ea),
      onPrimary: Color(0xFF4740e8),
      secondary: Color(0xFFfeca5c),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.red,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.black,
      onSurface: Colors.black,
    ),
  );
}
