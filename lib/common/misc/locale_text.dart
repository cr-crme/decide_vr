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

  String get age => {'en': 'Age', 'fr': 'Âge'}[language]!;
  String get young => {'en': 'Young', 'fr': 'Jeune'}[language]!;
  String get old => {'en': 'Old', 'fr': 'Vieux'}[language]!;

  String get sittingAbility =>
      {'en': 'Sitting Ability', 'fr': 'Capacité d\'assise'}[language]!;
  String get dynamicWithSupport =>
      {'en': 'Dynamic with support', 'fr': 'Avec support dynamique'}[language]!;
  String get dynamicNoSupport => {
        'en': 'Dynamic without support',
        'fr': 'Sans support dynamique'
      }[language]!;
  String get staticWithSupport =>
      {'en': 'Static with support', 'fr': 'Avec support statique'}[language]!;
  String get staticNoSupport => {
        'en': 'Static without support',
        'fr': 'Sans support statique'
      }[language]!;

  String get submit => {'en': 'Submit', 'fr': 'Soumettre'}[language]!;
}
