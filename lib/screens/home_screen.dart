import 'package:bitirme_projesi/widgets/home_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TOBETO',
                    style: TextStyle(
                        color: Color(0xFF9933FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "'ya hoş geldin",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const Text(
                'Seçkin',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  'Yeni nesil öğrenme deneyimi ile Tobeto\nkariyer yolculuğunda senin yanında!',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Card(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 38, left: 78, right: 78),
                      child: Image(
                          image: AssetImage("images/istanbul_kodluyor.png")),
                    ),
                    const Text(
                      "Ücretsiz eğitimlerle, geleceğin\nmesleklerinde sen de yerini al.",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Aradığın "İş" Burada!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    const Column(
                      children: [
                        DefaultTabController(
                          length: 4,
                          child: TabBar(
                            isScrollable: false,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Başvurularım',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Eğitimlerim',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Duyuru ve Haberlerim',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Anketlerim',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 350,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: const Border(
                            left: BorderSide(
                              color: Color.fromARGB(255, 3, 90, 4),
                              width: 10,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'İstanbul Kodluyor \nBilgilendirme',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 3, 90, 4),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        topLeft: Radius.circular(12),
                                      ),
                                    ),
                                    child: const Text(
                                      'Kabul Edildi',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.done,
                                    color: Color.fromARGB(255, 3, 90, 4),
                                  ),
                                  Text(
                                      'İstanbul Kodluyor başvuru formu \nonaylandı')
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.done,
                                    color: Color.fromARGB(255, 3, 90, 4),
                                  ),
                                  Text(
                                      'İstanbul Kodluyor belge yükleme formu \nonaylandı')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Card(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       const Text('Sınavlarım'),
              //       Container(
              //         width: 400,
              //         height: 180,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 120,
              //               height: 100,
              //               decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(8)),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   const Text(
              //                       'Herkes için \nKodlama 1D \nDeğerlendirme \nSınavı'),
              //                   Container(
              //                     decoration: const BoxDecoration(
              //                       gradient: LinearGradient(
              //                         colors: [
              //                           Colors.purple,
              //                           Colors.deepPurple
              //                         ],
              //                         begin: Alignment.topLeft,
              //                         end: Alignment.bottomRight,
              //                       ),
              //                     ),
              //                     child: const Icon(Icons.done),
              //                   )
              //                 ],
              //               ),
              //             ),
              //             const Text('Herkes İçin Kodlama - 1D'),
              //             const Row(
              //               children: [
              //                 Icon(
              //                   Icons.timer_outlined,
              //                   color: Colors.purple,
              //                 ),
              //                 Text(
              //                   '45 Dakika',
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.bold, fontSize: 18),
              //                 ),
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 200,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Center(
                            child: Text(
                              'Profilini Oluştur',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(360, 50),
                            ),
                            onPressed: () {},
                            child: const Text('Başla'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 400,
                        height: 200,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Center(
                              child: Text(
                                'Kendini Değerlendir',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(360, 50),
                              ),
                              onPressed: () {},
                              child: const Text('Başla'),
                            ),
                          ],
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 173, 5, 151),
                            Color.fromARGB(255, 241, 75, 219)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Center(
                            child: Text(
                              'Öğrenmeye Başla',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(360, 50),
                            ),
                            onPressed: () {},
                            child: const Text('Başla'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 400,
                height: 100,
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 112, 3, 185)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'images/tobetolight.png',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
