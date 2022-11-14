import 'package:flutter/material.dart';

import '../common/misc/locale_text.dart';
import '../common/models/age.dart';
import '../common/widgets/section_button.dart';
import '../common/widgets/submit_button.dart';
import '../common/widgets/vr_app_bar.dart';

class FillingInfoScreen extends StatelessWidget {
  const FillingInfoScreen({super.key});

  static const route = '/filling-info-screen';
  final double _spacing = 10;
  final double _buttonWidth = 200;
  final double _buttonRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VrAppBar(title: Text(LocaleText.of(context).title)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: _spacing),
              child: SectionButton(
                'Age',
                options: [Age.young, Age.old, Age.all],
                width: _buttonWidth,
                cornerRadius: _buttonRadius,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SubmitButton(LocaleText.of(context).submit),
            ),
          ],
        ),
      ),
    );
  }
}
