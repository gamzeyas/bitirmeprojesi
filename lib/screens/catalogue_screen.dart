import 'package:bitirme_projesi/screens/home_screen.dart';
import 'package:bitirme_projesi/widgets/home_drawer_widget.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  //pushReplacement geri butonu koymadan diğer sayfaya geçer!
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Image.network(
                "https://tobeto.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Ftobeto-logo.409772fc.png&w=384&q=75",
                width: ScreenWidth / 2,
                height: ScreenHeight / 3,
              ),
            ),
          ],
        ),
      ),
      drawer: const HomeDrawerWidget(),
    );
  }
}
