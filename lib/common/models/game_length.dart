import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class GameLength implements Option {
  GameLength() : choice = -1;
  GameLength._fromChoice(this.choice);

  final int choice;
  static GameLength get option1 => GameLength._fromChoice(0);
  static GameLength get option2 => GameLength._fromChoice(1);

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
    answers.gameLength = this;
  }
}
