import 'package:flutter/material.dart';

class PageEnd extends StatelessWidget {
  const PageEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 112, 3, 185)),
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
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
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
    );
  }
}
