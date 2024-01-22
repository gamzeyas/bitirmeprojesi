import 'package:bitirme_projesi/screens/home_screen.dart';
import 'package:bitirme_projesi/screens/profile_screen.dart';
import 'package:bitirme_projesi/screens/review_screen.dart';
import 'package:flutter/material.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/tobeto_logo.png',
                  width: 200,
                  height: 200,
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          ListTile(
            // leading: Icon(Icons.home),
            title: const Text('Anasayfa'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.reviews),
            title: const Text('Değerlendirmeler'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReviewScreen(),
                ),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.person),
            title: const Text('Profilim'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
          const ListTile(
            // leading: Icon(Icons.category),
            title: Text('Katalog'),
          ),
          const ListTile(
            // leading: Icon(Icons.calendar_month),
            title: Text('Takvim'),
          ),
          const Divider(),
          const ListTile(
              title: Row(
            children: [
              Text('Tobeto'),
              Icon(Icons.home_outlined),
            ],
          )),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Seçkin Ersoy',
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 30.0,
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
              title: Row(
            children: [
              Icon(
                Icons.copyright,
                size: 14,
              ),
              Text('2022 Tobeto'),
            ],
          ))
        ],
      ),
    );
  }
}
