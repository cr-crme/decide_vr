import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Option {
  String title(BuildContext context);

  void clickAnswerCallback(BuildContext context);
}
