import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class Age implements Option {
  Age() : choice = -1;
  Age._fromChoice(this.choice);

  final int choice;
  static Age get young => Age._fromChoice(0);
  static Age get old => Age._fromChoice(1);
  static Age get all => Age._fromChoice(-1);

  @override
  String title(context, {listen = true}) {
    switch (choice) {
      case 0:
        return LocaleText.of(context, listen: listen).young;
      case 1:
        return LocaleText.of(context, listen: listen).old;
      default:
        return LocaleText.of(context, listen: listen).all;
    }
  }

  @override
  void clickAnswerCallback(context) {
    final answers = Provider.of<Answers>(context, listen: false);
    answers.age = this;
  }
}
