import 'package:bitirme_projesi/screens/home_screen.dart';
import 'package:bitirme_projesi/widgets/home_drawer_widget.dart';
import 'package:bitirme_projesi/widgets/page_end.dart';
import 'package:bitirme_projesi/widgets/review_info_box.dart';

import 'package:bitirme_projesi/widgets/review_score_row_card.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          child: Image.network(
            "https://tobeto.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Ftobeto-logo.409772fc.png&w=384&q=75",
            width: screenWidth / 2,
            height: screenHeight / 3,
          ),
        ),
      ),
      drawer: const HomeDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Yetkinliklerini ücretsiz ölç, \n        bilgilerini test et.",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth / 1,
                height: screenHeight / 4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 176, 141, 236),
                      Color.fromARGB(255, 25, 6, 94)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Tobeto İşte Başarı Modeli",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "80 soru ile yetkinliklerini ölç, önerilen eğitimleri tamamla, rozetini kazan.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Raporu Görüntüle"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenWidth / 1,
                    height: screenHeight / 4,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 15, 6, 151),
                          Color.fromARGB(255, 124, 94, 235)
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Yazılımda Başarı Testi',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const Text(
                            "Çoktan seçmeli sorular ile teknik bilgini test et.",
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_downward_sharp))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    // width: screenWidth / 1,
                    //height: screenHeight / 3,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ReviewScoreRowCard(
                            courseName: "Front End", courseScore: 55),
                        const ReviewScoreRowCard(
                            courseName: "Full Stack", courseScore: 45),
                        ReviewScoreRowCard(
                            courseName: "Back End", courseScore: 68),
                        ReviewScoreRowCard(
                            courseName: "Microsoft\nSQL Server",
                            courseScore: 98),
                        ReviewScoreRowCard(
                            courseName: "Masaüstü\nProgramlama",
                            courseScore: 46),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: screenWidth / 1.5,
                              height: screenHeight / 80,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 176, 141, 236),
                                  // Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 25, 6, 94),
                                  Color.fromARGB(255, 255, 255, 255),
                                ],
                              )),
                            )
                          ],
                        ),
                        Container(
                          child: Text(
                            "Aboneliğe özel değerlendirme araçları için",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReviewInfoBox(
                    title: "Kazanım Odaklı Testler",
                    subtitle:
                        "Dijital gelişim kategorisindeki eğitimlere başlamadan öncekonuyla ilgili bilgin ölçülür ve seviyene göre yönlendirilirsin."),
                ReviewInfoBox(
                  title: "Huawei Talent Interview Teknik Bilgi Sınavı*",
                  subtitle:
                      "4400+ soru | 30+ programlama dili 4zorluk seviyesi",
                  footNote: "*Türkiye Ar-Ge Merkezi tarafından tasarlanmıştır.",
                )
              ],
            ),

/*
            Container(
              width: 400,
              height: 100,
              alignment: Alignment.topCenter,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 112, 3, 185)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.network(
                        'https://tobeto.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FTebeto-logo-yatay-beyaz.8c2d6927.png&w=384&q=75',
                        width: 100,
                        height: 50,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: const Text(
                            'Bize Ulaşın',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.copyright,
                        color: Colors.white,
                      ),
                      Text(
                        ' 2022 TOBETO',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),*/
            PageEnd(),
          ],
        ),
      ),
    );
  }
}
