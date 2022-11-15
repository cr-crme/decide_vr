import 'package:flutter/material.dart';

import './fill_info_screen.dart';
import '../common/misc/locale_text.dart';
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
              child: Text(
                LocaleText.of(context).appExplanation,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.onBackground),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            const _LanguageSwitcher(
              width: 125,
              height: 50,
            ),
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

class _LanguageSwitcher extends StatefulWidget {
  const _LanguageSwitcher({
    Key? key,
    this.width = 125,
    this.height = 50,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  State<_LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<_LanguageSwitcher> {
  bool _currentLanguage = true;
  late final double _sliderWidthRatio = 0.55;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeLanguage,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).colorScheme.secondary),
            width: widget.width,
            height: widget.height,
          ),
          Positioned(
            right:
                _currentLanguage ? 0 : widget.width * (1 - _sliderWidthRatio),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).colorScheme.primary),
              width: widget.width * _sliderWidthRatio,
              height: widget.height,
            ),
          ),
          Positioned(
            right: widget.width * _sliderWidthRatio * 1.05,
            height: widget.height,
            child: Text(
              'en',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
          Positioned(
            left: widget.width * _sliderWidthRatio * 1.15,
            height: widget.height,
            child: Text(
              'fr',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
        ],
      ),
    );
  }

  void _changeLanguage() {
    _currentLanguage = !_currentLanguage;
    LocaleText.of(context, listen: false)
        .setLanguage(_currentLanguage ? 'fr' : 'en');
    setState(() {});
  }
}
