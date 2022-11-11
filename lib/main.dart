import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './misc/locale_text.dart';
import './misc/theme.dart';
import './screens/fill_info_screen.dart';

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
          ChangeNotifierProvider(
              create: (context) => LocaleText(language: defaultLanguage)),
        ],
        child: MaterialApp(
          onGenerateTitle: (context) => LocaleText.of(context).title,
          theme: decideVrTheme,
          initialRoute: FillingInfoScreen.route,
          routes: {
            FillingInfoScreen.route: (ctx) => const FillingInfoScreen(),
          },
        ));
  }
}
