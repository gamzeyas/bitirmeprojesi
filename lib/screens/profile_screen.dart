import 'package:bitirme_projesi/screens/home_screen.dart';
import 'package:bitirme_projesi/widgets/home_drawer_widget.dart';
import 'package:bitirme_projesi/widgets/page_end.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
      drawer: HomeDrawerWidget(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8, left: 8, top: 8),
              child: Container(
                  color: Colors.blue,
                  width: ScreenWidth / 1,
                  height: ScreenHeight / 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
              child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.person),
                          Text("Seçkin  ERSOY"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Text("01.01.1999"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          Text("seckinersoy@gmail.com"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          Text("+90 555 555 55 55"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(children: []),
            ),
            PageEnd(),
          ],
        ),
      ),
    );
  }
}
