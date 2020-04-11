import 'package:flutter/material.dart';

import 'package:feelify/providers/songs.dart';
import 'package:provider/provider.dart';

/*
 * Widget to provide providers to flutter widget tree
 */
class MainProvider extends StatelessWidget {
  final Widget child;

  MainProvider({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SongsProvider>(
          create: (_) => SongsProvider(),
        ),
      ],
      child: child,
    );
  }
}
