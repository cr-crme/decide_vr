import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Option {
  String title(BuildContext context, {bool listen = true});

  void clickAnswerCallback(BuildContext context);
}
