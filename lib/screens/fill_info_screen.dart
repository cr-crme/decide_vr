import 'package:flutter/material.dart';

import '../misc/locale_text.dart';

class FillingInfoScreen extends StatelessWidget {
  const FillingInfoScreen({super.key});

  static const route = '/filling-info-screen';

  @override
  Widget build(BuildContext context) {
    LocaleText.of(context).setLanguage('en');
    return Scaffold(
        appBar: AppBar(title: Text(LocaleText.of(context).title)),
        body: const Center(child: CircularProgressIndicator()));
  }
}
