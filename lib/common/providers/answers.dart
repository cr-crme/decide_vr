import 'package:flutter/foundation.dart';

import '../models/age.dart';
import '../models/sitting_ability.dart';

class Answers extends ChangeNotifier {
  Answers({age, sittingAbility})
      : _age = age ?? Age.all,
        _sittingAbility = sittingAbility ?? SittingAbility.dynamicWithSupport;

  Age _age;
  Age get age => _age;
  set age(Age value) {
    _age = value;
    notifyListeners();
  }

  SittingAbility _sittingAbility;
  SittingAbility get sittingAbility => _sittingAbility;
  set sittingAbility(SittingAbility value) {
    _sittingAbility = value;
    notifyListeners();
  }
}
