import 'package:provider/provider.dart';

import './option.dart';
import '../misc/locale_text.dart';
import '../providers/answers.dart';

class OptionTemplate implements Option {
  // This is not a real option, but it can be used as a template to create new
  // options

  OptionTemplate() : choice = -1;
  OptionTemplate._fromChoice(this.choice);

  final int choice;
  static OptionTemplate get option1 => OptionTemplate._fromChoice(0);
  static OptionTemplate get option2 => OptionTemplate._fromChoice(1);

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
    answers.template = this;
  }
}
