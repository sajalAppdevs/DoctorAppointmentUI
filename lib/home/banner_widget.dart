import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/home/banner.png"),
                    fit: BoxFit.contain)),
          );
        },
      ),
    );
  }
}
