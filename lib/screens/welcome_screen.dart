import 'package:flutter/material.dart';

import './fill_info_screen.dart';
import '../common/misc/locale_text.dart';
import '../common/widgets/language_switcher.dart';
import '../common/widgets/start_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const route = '/welcome-screen';

  void _clickStartCallback(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(FillingInfoScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleText.of(context).title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                const Text('Put logo here'),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 100,
              child: Text(
                LocaleText.of(context).appExplanation,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.onBackground),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            const LanguageSwitcher(width: 125, height: 35),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: StartButton(
                LocaleText.of(context).start,
                width: 150,
                clickCallback: _clickStartCallback,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
