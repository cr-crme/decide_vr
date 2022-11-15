import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class Difficulty implements Option {
  Difficulty() : choice = -1;
  Difficulty._fromChoice(this.choice);

  final int choice;
  static Difficulty get option1 => Difficulty._fromChoice(0);
  static Difficulty get option2 => Difficulty._fromChoice(1);

  @override
  String title(context, {listen = true}) {
    switch (choice) {
      case 0:
        return LocaleText.of(context, listen: listen).template;
      case 1:
        return LocaleText.of(context, listen: listen).template;
      default:
        return LocaleText.of(context, listen: listen).template;
    }
  }

  @override
  void clickAnswerCallback(context) {
    final answers = Provider.of<Answers>(context, listen: false);
    answers.difficulty = this;
  }
}
