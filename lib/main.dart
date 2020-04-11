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
          primarySwatch: Colors.green,
        ),
        initialRoute: Routes.initialRoute,
        routes: Routes.routes,
      ),
    );
  }
}
