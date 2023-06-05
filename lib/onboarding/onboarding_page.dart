import 'package:flutter/material.dart';

import '../Signin/signin_page.dart';
import 'constant.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingPages.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return onboardingPages[index];
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              if (_currentPage == onboardingPages.length - 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
            child: Image.asset(
              nextButtonImages[_currentPage],
              height: 80.0,
              width: 80.0,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < onboardingPages.length; i++) {
      indicators.add(
        i == _currentPage
            ? _buildPageIndicatorDot(true)
            : _buildPageIndicatorDot(false),
      );
    }
    return indicators;
  }

  Widget _buildPageIndicatorDot(bool isActive) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 8.0,
        width: isActive ? 16.0 : 8.0,
        decoration: BoxDecoration(
            color: isActive ? const Color(0xff4C5DF4) : Colors.grey,
            borderRadius: isActive
                ? BorderRadius.circular(10)
                : BorderRadius.circular(50)));
  }
}

class OnboardingPage extends StatelessWidget {
  final Image image;
  final String titletext;
  final String subtext;

  const OnboardingPage(
      {super.key,
      required this.image,
      required this.titletext,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Color(0xff6E7682)),
                ),
              )
            ],
          ),
          Expanded(child: image),
          Text(
            titletext,
            style: const TextStyle(
                color: Color(0xff0C1037),
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            subtext,
            style: const TextStyle(
                color: Color(0xff6E7682),
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
