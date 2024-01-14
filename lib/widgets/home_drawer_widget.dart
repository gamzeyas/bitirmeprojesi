import 'package:flutter/material.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 3, 90, 4),
                  Colors.white,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              'Drawer Başlık',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Sayfa 1'),
            onTap: () {
              // Drawer'dan seçilen sayfaya geçiş işlemleri
              Navigator.pop(context); // Drawer'ı kapat
              // Diğer sayfa navigasyon kodları buraya gelecek
            },
          ),
          ListTile(
            title: const Text('Sayfa 2'),
            onTap: () {
              // Drawer'dan seçilen sayfaya geçiş işlemleri
              Navigator.pop(context); // Drawer'ı kapat
              // Diğer sayfa navigasyon kodları buraya gelecek
            },
          ),
          // Buraya istediğiniz kadar ListTile ekleyebilirsiniz
        ],
      ),
    );
  }
}
