import 'package:flutter/material.dart';

class Hesap extends StatefulWidget {
  const Hesap({super.key});

  @override
  State<Hesap> createState() => _HesapState();
}

class _HesapState extends State<Hesap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap"),
      ),
    );
  }
}
