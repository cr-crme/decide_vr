import 'package:flutter/foundation.dart';

import '../models/age.dart';
import '../models/contraindications.dart';
import '../models/environment.dart';
import '../models/game_goal.dart';
import '../models/option_template.dart';
import '../models/sitting_ability.dart';
import '../models/standing_ability.dart';

class Answers extends ChangeNotifier {
  Answers({
    age,
    sittingAbility,
    standingAbility,
    gameGoal,
    environment,
    contraindications,
  })  : _age = age ?? Age.all,
        _sittingAbility = sittingAbility ?? SittingAbility.dynamicWithSupport,
        _standingAbility =
            standingAbility ?? StandingAbility.dynamicWithSupport,
        _gameGoal = gameGoal ?? GameGoal.endurance,
        _environment = environment ?? Environment.option1,
        _contraindications = contraindications ?? Contraindications.option1,
        _template = OptionTemplate.option1;

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

  StandingAbility _standingAbility;
  StandingAbility get standingAbility => _standingAbility;
  set standingAbility(StandingAbility value) {
    _standingAbility = value;
    notifyListeners();
  }

  GameGoal _gameGoal;
  GameGoal get gameGoal => _gameGoal;
  set gameGoal(GameGoal value) {
    _gameGoal = value;
    notifyListeners();
  }

  Environment _environment;
  Environment get environment => _environment;
  set environment(Environment value) {
    _environment = value;
    notifyListeners();
  }

  Contraindications _contraindications;
  Contraindications get contraindications => _contraindications;
  set contraindications(Contraindications value) {
    _contraindications = value;
    notifyListeners();
  }

  OptionTemplate _template;
  OptionTemplate get template => _template;
  set template(OptionTemplate value) {
    _template = value;
    notifyListeners();
  }
}
