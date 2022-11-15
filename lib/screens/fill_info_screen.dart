import 'package:flutter/material.dart';

import '../common/misc/locale_text.dart';
import '../common/models/age.dart';
import '../common/models/contraindications.dart';
import '../common/models/difficulty.dart';
import '../common/models/environment.dart';
import '../common/models/game_goal.dart';
import '../common/models/game_length.dart';
import '../common/models/sitting_ability.dart';
import '../common/models/standing_ability.dart';
import '../common/widgets/section_button.dart';
import '../common/widgets/submit_button.dart';
import '../common/widgets/vr_app_bar.dart';

class FillingInfoScreen extends StatelessWidget {
  const FillingInfoScreen({super.key});

  static const route = '/filling-info-screen';
  final double _spacing = 10;
  final double _buttonWidth = 250;
  final double _buttonRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VrAppBar(title: Text(LocaleText.of(context).title)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).age,
                  options: [Age.young, Age.old, Age.all],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.last,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).sittingAbility,
                  options: [
                    SittingAbility.dynamicWithSupport,
                    SittingAbility.dynamicNoSupport,
                    SittingAbility.staticWithSupport,
                    SittingAbility.staticNoSupport,
                  ],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).standingAbility,
                  options: [
                    StandingAbility.dynamicWithSupport,
                    StandingAbility.dynamicNoSupport,
                    StandingAbility.staticWithSupport,
                    StandingAbility.staticNoSupport,
                  ],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).gameGoal,
                  options: [
                    GameGoal.endurance,
                    GameGoal.coordination,
                    GameGoal.lowerExtremityStrength,
                    GameGoal.balance,
                    GameGoal.unimanualUpperExtremity,
                    GameGoal.bimanualUpperExtremity,
                  ],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).environment,
                  options: [Environment.option1],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).contraindications,
                  options: [Contraindications.option1],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).gameLength,
                  options: [GameLength.option1],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _spacing),
                child: SectionButton(
                  LocaleText.of(context).difficulty,
                  options: [Difficulty.option1],
                  width: _buttonWidth,
                  cornerRadius: _buttonRadius,
                  defaultOption: DefaultOption.first,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SubmitButton(
                  LocaleText.of(context).submit,
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
