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

  String get template => {'en': 'Template', 'fr': 'Canevas'}[language]!;

  String get title =>
      {'en': 'Decide your VR game', 'fr': 'Choisi ton jeu RV'}[language]!;
  String get all => {'en': 'All', 'fr': 'Tous'}[language]!;

  String get age => {'en': 'Age', 'fr': 'Âge'}[language]!;
  String get young => {'en': 'Young', 'fr': 'Jeune'}[language]!;
  String get old => {'en': 'Old', 'fr': 'Vieux'}[language]!;

  String get sittingAbility =>
      {'en': 'Sitting Ability', 'fr': 'Capacité d\'assise'}[language]!;
  String get standingAbility =>
      {'en': 'Standing Ability', 'fr': 'Capacité de support'}[language]!;
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

  String get gameGoal =>
      {'en': 'Game use goal', 'fr': 'But de l\'utilisation'}[language]!;
  String get endurance => {'en': 'Endurance', 'fr': 'Endurance'}[language]!;
  String get coordination =>
      {'en': 'Coordination', 'fr': 'Coordination'}[language]!;
  String get lowerExtremityStrength => {
        'en': 'Lower extremity strength',
        'fr': 'Force dans les jambes'
      }[language]!;
  String get balance => {'en': 'Balance', 'fr': 'Équilibre'}[language]!;
  String get unimanualUpperExtremity =>
      {'en': 'Unimanual upper extremity', 'fr': 'Un bras'}[language]!;
  String get bimanualUpperExtremity =>
      {'en': 'Bimanual upper extremity', 'fr': 'Ambidextrie'}[language]!;

  String get environment =>
      {'en': 'Environment', 'fr': 'Environnement'}[language]!;

  String get contraindications =>
      {'en': 'Contraindications', 'fr': 'Contre-indications'}[language]!;

  String get gameLength =>
      {'en': 'Game length', 'fr': 'Durée de jeu'}[language]!;

  String get difficulty => {'en': 'Difficulty', 'fr': 'Difficulté'}[language]!;

  String get submit => {'en': 'Submit', 'fr': 'Soumettre'}[language]!;
}
