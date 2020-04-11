import 'package:flutter/material.dart';

import 'package:feelify/ui/home/home_screen.dart';

class Routes {
  static const initialRoute = HomeScreen.SCREEN_ID;

  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      HomeScreen.SCREEN_ID: (_) => HomeScreen(),
    };
  }
}
