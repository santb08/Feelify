import 'package:flutter/material.dart';

import 'package:feelify/ui/home/home_screen.dart';
import 'package:feelify/ui/onboarding/onboarding_screen.dart';

class Routes {
  static const initialRoute = OnBoardingScreen.SCREEN_ID;

  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      HomeScreen.SCREEN_ID: (_) => HomeScreen(),
      OnBoardingScreen.SCREEN_ID: (_) => OnBoardingScreen(),
    };
  }
}
