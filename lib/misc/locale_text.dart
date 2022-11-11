import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocaleText with ChangeNotifier {
  LocaleText({required this.language});

  void setLanguage(language) => this.language = language;
  String language;

  static LocaleText of(BuildContext context, {bool listen = false}) {
    return Provider.of<LocaleText>(context, listen: listen);
  }

  String get title => {
        'en': 'Decide your VR game',
        'fr': 'Choisi ton jeu RV',
      }[language]!;
}
