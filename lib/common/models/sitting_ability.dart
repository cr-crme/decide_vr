import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class SittingAbility implements Option {
  SittingAbility() : choice = -1;
  SittingAbility._fromChoice(this.choice);

  final int choice;
  static SittingAbility get dynamicWithSupport => SittingAbility._fromChoice(0);
  static SittingAbility get dynamicNoSupport => SittingAbility._fromChoice(1);
  static SittingAbility get staticWithSupport => SittingAbility._fromChoice(2);
  static SittingAbility get staticNoSupport => SittingAbility._fromChoice(3);

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
    answers.sittingAbility = this;
  }
}
