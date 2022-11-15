import 'package:flutter/material.dart';

const Color _backgroundColor = Color.fromARGB(255, 84, 89, 227);

ThemeData get decideVrTheme {
  return ThemeData(
    fontFamily: "Lato",
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 0, 243, 147),
      onPrimary: Colors.black,
      secondary: Color.fromARGB(255, 9, 162, 185),
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.black,
      background: _backgroundColor,
      onBackground: Colors.white,
      surface: _backgroundColor,
      onSurface: Colors.black,
    ),
    scaffoldBackgroundColor: _backgroundColor,
  );
}
