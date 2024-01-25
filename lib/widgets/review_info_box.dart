import 'package:flutter/material.dart';

class ReviewInfoBox extends StatelessWidget {
  const ReviewInfoBox(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.footNote = ""})
      : super(key: key);

  final String title;
  final String subtitle;
  final String footNote;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth / 2.2,
        height: screenHeight / 4,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          gradient: LinearGradient(
            colors: [Colors.purple, Color.fromARGB(255, 255, 64, 220)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                footNote,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
