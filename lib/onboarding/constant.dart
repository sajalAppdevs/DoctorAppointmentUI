import 'package:flutter/material.dart';

import 'onboarding_page.dart';

final List<Widget> onboardingPages = [
  OnboardingPage(
    image: Image.asset('assets/slider/Layer1.png'),
    titletext: 'Find Your Doctor',
    subtext:
        "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet that fist and consectetur ipsum",
  ),
  OnboardingPage(
    image: Image.asset('assets/slider/Layer2.png'),
    titletext: 'Order Your medicine',
    subtext:
        "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet that fist and consectetur ipsum",
  ),
  OnboardingPage(
    image: Image.asset('assets/slider/Layer3.png'),
    titletext: 'Lab Tests at home',
    subtext:
        "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed vel vitae ali quet that fist and consectetur ipsum",
  ),
];

final List<String> nextButtonImages = [
  'assets/slider/button1.png',
  'assets/slider/button2.png',
  'assets/slider/button3.png',
];
