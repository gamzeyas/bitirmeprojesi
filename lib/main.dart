import 'package:bitirme_projesi/login_screen.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.loginTheme,


      home: const LoginScreen(),
    );
  }
}