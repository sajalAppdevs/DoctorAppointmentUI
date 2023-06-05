import 'package:flutter/material.dart';

import '../appBar/customAppBar.dart';
import 'Appoinmnetcard_widget.dart';
import 'banner_widget.dart';
import 'categorie_widget.dart';
import 'const_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Doctor Appointment',
        icon: Icons.notifications_none_outlined,
        onIconPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const BannerCard(),
              const SizedBox(height: 20),
              ReuseText(
                firttext: 'Categories',
                secondtext: 'View All',
              ),
              CategoriesCard(cateImg: cateImg),
              const SizedBox(height: 24),
              ReuseText(
                firttext: 'Popular Doctor',
                secondtext: 'View All',
              ),
              const SizedBox(height: 10),
              const DrAppoinmentCard(),
            ],
          ),
        ),
      ),
    );
  }
}
