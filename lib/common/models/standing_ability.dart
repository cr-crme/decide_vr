import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class StandingAbility implements Option {
  StandingAbility() : choice = -1;
  StandingAbility._fromChoice(this.choice);

  final int choice;
  static StandingAbility get dynamicWithSupport =>
      StandingAbility._fromChoice(0);
  static StandingAbility get dynamicNoSupport => StandingAbility._fromChoice(1);
  static StandingAbility get staticWithSupport =>
      StandingAbility._fromChoice(2);
  static StandingAbility get staticNoSupport => StandingAbility._fromChoice(3);

  @override
  String title(context, {listen = true}) {
    switch (choice) {
      case 0:
        return LocaleText.of(context, listen: listen).dynamicWithSupport;
      case 1:
        return LocaleText.of(context, listen: listen).dynamicNoSupport;
      case 2:
        return LocaleText.of(context, listen: listen).staticWithSupport;
      case 3:
        return LocaleText.of(context, listen: listen).staticNoSupport;
      default:
        return 'Error';
    }
  }

  @override
  void clickAnswerCallback(context) {
    final answers = Provider.of<Answers>(context, listen: false);
    answers.standingAbility = this;
  }
}
