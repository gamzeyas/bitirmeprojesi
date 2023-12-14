import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get loginTheme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: Colors.white,
        onPrimary: Colors.grey, // Primal renk üzerindeki metin ve ikonlar için renk
        secondary: Colors.purple.shade800, // AccentColor yerine
        onSecondary: Colors.blueAccent, // Secondary renk üzerindeki metin ve ikonlar için renk
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple.shade800, // Buton rengi
          onPrimary: Colors.white, // Buton üzerindeki metin rengi
        ),
      ),
      textTheme: TextTheme(
        headline4: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        button: TextStyle(color: Colors.white, fontSize: 18.0,fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: Colors.grey),
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
}
