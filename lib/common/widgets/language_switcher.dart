import 'package:decide_vr/common/misc/locale_text.dart';
import 'package:flutter/material.dart';

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  String _currentLanguage = 'fr';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _currentLanguage = _currentLanguage == 'fr' ? 'en' : 'fr';
        LocaleText.of(context, listen: false).setLanguage(_currentLanguage);
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          _currentLanguage == 'fr' ? 'en' : 'fr',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
