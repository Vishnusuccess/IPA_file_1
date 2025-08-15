import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
  );
}
