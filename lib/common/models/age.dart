import '../misc/locale_text.dart';
import '../models/options.dart';

class Age implements Options {
  Age() : choice = -1;
  Age._fromChoice(this.choice);

  final int choice;
  static Age get young => Age._fromChoice(0);
  static Age get old => Age._fromChoice(1);
  static Age get all => Age._fromChoice(-1);

  @override
  String title(context) {
    switch (choice) {
      case 0:
        return LocaleText.of(context).young;
      case 1:
        return LocaleText.of(context).old;
      default:
        return LocaleText.of(context).all;
    }
  }
}
