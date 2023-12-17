import 'package:flutter/material.dart';

class AppTheme {
  // Açık Tema
  static ThemeData get lightTheme {
    // Mevcut tema kodunuz (Açık Tema olarak kullanılacak)
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: Colors.white,
        onPrimary: Colors.grey,
        secondary: Colors.purple.shade800,
        onSecondary: Colors.blueAccent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple.shade800,
          foregroundColor: Colors.white,
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium:
            TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        labelLarge: TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(color: Colors.grey),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
      fontFamily: 'Tinos',
    );
  }

  // Koyu Tema
  static ThemeData get darkTheme {
    // Koyu tema için özelleştirmeler
    return ThemeData(
      colorScheme: ColorScheme.dark(
        primary: Colors.grey.shade50,
        onPrimary: Colors.white,
        secondary: Colors.purple.shade200,
        onSecondary: Colors.blueGrey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple.shade800,
          foregroundColor: Colors.grey.shade50,
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        labelLarge: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(color: Colors.black),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade800,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
      fontFamily: 'Tinos',
    );
  }
}
