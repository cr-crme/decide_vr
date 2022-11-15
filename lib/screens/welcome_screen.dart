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

class _LanguageSwitcherState extends State<_LanguageSwitcher>
    with TickerProviderStateMixin {
  bool _currentLanguage = true;

  late final AnimationController _slideController = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _clickedChangeLanguage,
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
          PositionedTransition(
            rect: RelativeRectTween(
              begin: RelativeRect.fromLTRB(widget.width * 0.45, 0, 0, 0),
              end: RelativeRect.fromLTRB(0, 0, widget.width * 0.45, 0),
            ).animate(CurvedAnimation(
              parent: _slideController,
              curve: Curves.easeInOut,
            )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Positioned(
            left: widget.width * 0.1,
            height: widget.height,
            child: Text(
              'en',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: widget.width * 0.1,
            height: widget.height,
            child: Text(
              'fr',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void _clickedChangeLanguage() {
    _currentLanguage = !_currentLanguage;
    LocaleText.of(context, listen: false)
        .setLanguage(_currentLanguage ? 'fr' : 'en');

    _currentLanguage ? _slideController.reverse() : _slideController.forward();
    setState(() {});
  }
}
