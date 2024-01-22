import 'package:flutter/material.dart';

class ReviewScoreRowCard extends StatelessWidget {
  const ReviewScoreRowCard(
      {Key? key, required this.courseName, required this.courseScore})
      : super(key: key);

  final String courseName;
  final int courseScore;
  final String showReport = "Raporu Görüntüle";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Text(courseScore.toString()),
        ),
        Text(courseName),
        ElevatedButton(onPressed: () {}, child: Text(showReport))
      ],
    );
  }
}
