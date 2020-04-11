import 'package:feelify/ui/constants/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const SCREEN_ID = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.APP_TITLE),
      ),
    );
  }
}
