import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class Environment implements Option {

  Environment() : choice = -1;
  Environment._fromChoice(this.choice);

  final int choice;
  static Environment get option1 => Environment._fromChoice(0);

  @override
  String title(context, {listen = true}) {
    switch (choice) {
      case 0:
        return LocaleText.of(context, listen: listen).template;
      default:
        return LocaleText.of(context, listen: listen).template;
    }
  }

  @override
  void clickAnswerCallback(context) {
    final answers = Provider.of<Answers>(context, listen: false);
    answers.environment = this;
  }
}
