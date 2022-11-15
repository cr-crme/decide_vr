import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class GameGoal implements Option {
  GameGoal() : choice = -1;
  GameGoal._fromChoice(this.choice);

  final int choice;
  static GameGoal get endurance => GameGoal._fromChoice(0);
  static GameGoal get coordination => GameGoal._fromChoice(1);
  static GameGoal get lowerExtremityStrength => GameGoal._fromChoice(2);
  static GameGoal get balance => GameGoal._fromChoice(3);
  static GameGoal get unimanualUpperExtremity => GameGoal._fromChoice(4);
  static GameGoal get bimanualUpperExtremity => GameGoal._fromChoice(5);

  @override
  String title(context, {listen = true}) {
    switch (choice) {
      case 0:
        return LocaleText.of(context, listen: listen).endurance;
      case 1:
        return LocaleText.of(context, listen: listen).coordination;
      case 2:
        return LocaleText.of(context, listen: listen).lowerExtremityStrength;
      case 3:
        return LocaleText.of(context, listen: listen).balance;
      case 4:
        return LocaleText.of(context, listen: listen).unimanualUpperExtremity;
      case 5:
        return LocaleText.of(context, listen: listen).bimanualUpperExtremity;
      default:
        return 'Error';
    }
  }

  @override
  void clickAnswerCallback(context) {
    final answers = Provider.of<Answers>(context, listen: false);
    answers.gameGoal = this;
  }
}
