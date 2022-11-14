import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocaleText with ChangeNotifier {
  LocaleText({required this.language});

  void setLanguage(language) {
    this.language = language;
    notifyListeners();
  }

  String language;

  static LocaleText of(BuildContext context, {bool listen = true}) {
    return Provider.of<LocaleText>(context, listen: listen);
  }

  String get title =>
      {'en': 'Decide your VR game', 'fr': 'Choisi ton jeu RV'}[language]!;
  String get all => {'en': 'All', 'fr': 'Tous'}[language]!;

  String get young => {'en': 'Young', 'fr': 'Jeune'}[language]!;
  String get old => {'en': 'Old', 'fr': 'Vieux'}[language]!;

  String get submit => {'en': 'Submit', 'fr': 'Soumettre'}[language]!;
}
