import 'package:bitirme_projesi/screens/home_screen.dart';
import 'package:bitirme_projesi/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_projesi/data/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Anasayfa': (context) =>
            const HomePage(), // AnasayfaScreen, anasayfanızın widget sınıfıdır.
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Açık tema
      darkTheme: AppTheme.darkTheme, // Koyu tema
      themeMode: ThemeMode.system,

      home: const LoginScreen(),
    );
  }
}
