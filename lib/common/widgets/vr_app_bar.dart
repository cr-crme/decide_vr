import 'package:flutter/material.dart';

import './language_switcher.dart';

class VrAppBar extends AppBar {
  VrAppBar({
    super.key,
    super.title,
    actions,
  }) : super(actions: [
          if (actions != null) ...actions,
          const LanguageSwitcher(),
          const SizedBox(width: 10),
        ]);
}
