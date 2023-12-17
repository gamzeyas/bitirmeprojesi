import 'package:bitirme_projesi/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Anasayfa',
        bodyContent: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.purple.shade800
          ),
          padding: EdgeInsets.all(20),
          child: Text("Tobeto'ya Hoşgeldin",
          style: TextStyle(
            fontSize: 20,
          ),)
        ) ,
    ),
        );
}}
