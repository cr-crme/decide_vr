import 'package:flutter/material.dart';

import '../models/options.dart';

class SectionButton extends StatefulWidget {
  const SectionButton(
    this.title, {
    super.key,
    required this.options,
    this.width = 200,
    this.cornerRadius = 20,
  });

  final String title;
  final List<Options> options;

  final double width;
  final double cornerRadius;

  @override
  State<SectionButton> createState() => _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {
  bool _isExpanded = false;
  int _optionSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(widget.cornerRadius)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              onPressed: () {
                _isExpanded = !_isExpanded;
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(widget.width),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ),
          if (_isExpanded)
            ...widget.options.asMap().entries.map(
              (entry) {
                final index = entry.key;
                final text = entry.value;
                return _optionWidget(index, text);
              },
            ).toList(),
        ],
      ),
    );
  }

  GestureDetector _optionWidget(int index, Options text) {
    return GestureDetector(
      onTap: () {
        _optionSelected = index;
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          text.title(context),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: _optionSelected == index
                  ? Theme.of(context).colorScheme.onSecondary
                  : Colors.black),
        ),
      ),
    );
  }
}
