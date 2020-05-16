import 'package:flutter/material.dart';

import 'package:feelify/providers/main_provider.dart';
import 'package:feelify/routes.dart';
import 'package:feelify/ui/constants/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainProvider(
      child: MaterialApp(
        title: AppStrings.APP_TITLE,
        theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Color(0xFF1C2725),
              fontSize: 24,
              fontWeight: FontWeight.bold, 
            ),
            bodyText1: TextStyle(
              color: Color(0xFF566865),
              fontSize: 18
            ),
          ),
          fontFamily: 'Comfortaa',
          primaryColor: Color(0xFFC96DA5),
          hintColor: Colors.red
        ),
        initialRoute: Routes.initialRoute,
        routes: Routes.routes,
      ),
    );
  }
}
