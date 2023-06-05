import 'package:flutter/material.dart';

List<String> cateImg = [
  'assets/home/Dental.png',
  'assets/home/Heart.png',
  'assets/home/Kidney.png',
  'assets/home/Dental.png',
  'assets/home/Heart.png',
  'assets/home/Kidney.png',
];

class ReuseText extends StatelessWidget {
  String firttext;
  String secondtext;
  ReuseText({super.key, required this.firttext, required this.secondtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firttext,
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff0C1037),
                fontWeight: FontWeight.w600),
          ),
          Text(secondtext),
        ],
      ),
    );
  }
}
