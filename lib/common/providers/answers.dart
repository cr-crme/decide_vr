import 'package:flutter/foundation.dart';

import '../models/age.dart';
import '../models/game_goal.dart';
import '../models/sitting_ability.dart';
import '../models/standing_ability.dart';

class Answers extends ChangeNotifier {
  Answers({
    age,
    sittingAbility,
    standingAbility,
    gameGoal,
  })  : _age = age ?? Age.all,
        _sittingAbility = sittingAbility ?? SittingAbility.dynamicWithSupport,
        _standingAbility =
            standingAbility ?? StandingAbility.dynamicWithSupport,
        _gameGoal = gameGoal ?? GameGoal.endurance;

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
}
