import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/answers.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(this.title,
      {super.key, this.width = 200, this.cornerRadius = 20});

  final String title;
  final double width;
  final double cornerRadius;

  void _submit(BuildContext context) {
    final answers = Provider.of<Answers>(context, listen: false);

    // TODO: The algorithm goes here
    _analyseResults(context, answers);
  }

  void _analyseResults(BuildContext context, Answers answers) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Voici les options sélectionnées"),
      content: Text("Age: ${answers.age.title(context, listen: false)}\n"),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) => alert,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(width),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        side: const BorderSide(width: 1, color: Colors.white),
        elevation: 0,
      ),
      onPressed: () => _submit(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
