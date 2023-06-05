import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.cateImg,
  });

  final List<String> cateImg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cateImg.length,
        itemBuilder: (context, index) {
          return Container(
            width: 90,
            height: 110,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(cateImg[index]))),
          );
        },
      ),
    );
  }
}
