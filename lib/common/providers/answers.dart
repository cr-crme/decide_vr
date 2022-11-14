import 'package:flutter/foundation.dart';

import '../models/age.dart';

class Answers extends ChangeNotifier {
  Answers({age}) : _age = age ?? Age.all;

  Age _age;
  Age get age => _age;
  set age(Age value) {
    _age = value;
    notifyListeners();
  }
}
