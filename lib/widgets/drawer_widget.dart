import 'package:bitirme_projesi/pages/Anasayfa.dart';
import 'package:bitirme_projesi/pages/Degerlendirmeler.dart';
import 'package:bitirme_projesi/pages/Katalog.dart';
import 'package:bitirme_projesi/pages/Takvim.dart';
import 'package:bitirme_projesi/pages/Tobeto.dart';
import 'package:bitirme_projesi/pages/profil.dart';
import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget bodyContent;
  final String title;

  BasePage({required this.bodyContent, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
        body: bodyContent,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/tobeto_logo.png'),
                  fit: BoxFit.fitWidth,
                ),
                color: Colors.white,
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Anasayfa()));

              },
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Değerlendirmeler'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Degerlendirmeler()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Profil()));
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Katalog'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Katalog()));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Takvim'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Takvim()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Tobeto'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Tobeto()));
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Profil Girişi'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.pushNamed(context, '/profilGirisi');
              },
            ),
          ],
        ),
      )

        // Drawer içeriği...
      );


  }
}
