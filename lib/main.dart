import 'package:flutter/material.dart';

import './misc/theme.dart';
import './screens/fill_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: decideVrTheme,
      initialRoute: FillingInfoScreen.route,
      routes: {
        FillingInfoScreen.route: (ctx) => const FillingInfoScreen(),
      },
    );
  }
}
