import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './common/misc/locale_text.dart';
import './common/misc/theme.dart';
import './common/providers/answers.dart';
import './screens/fill_info_screen.dart';
import './screens/welcome_screen.dart';

void main() {
  // We set the default language to french, but this can be set later
  runApp(const MyApp(defaultLanguage: 'fr'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.defaultLanguage});

  final String defaultLanguage;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Answers()),
        ChangeNotifierProvider(
            create: (context) => LocaleText(language: defaultLanguage)),
      ],
      child: MaterialApp(
        theme: decideVrTheme,
        initialRoute: WelcomeScreen.route,
        routes: {
          FillingInfoScreen.route: (ctx) => const FillingInfoScreen(),
          WelcomeScreen.route: (ctx) => const WelcomeScreen(),
        },
      ),
    );
  }
}
