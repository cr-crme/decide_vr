import 'package:flutter/material.dart';

import '../models/option.dart';

enum DefaultOption {
  first,
  last,
}

class SectionButton extends StatefulWidget {
  const SectionButton(
    this.title, {
    super.key,
    required this.options,
    this.width = 200,
    this.cornerRadius = 20,
    this.defaultOption = DefaultOption.first,
  });

  final String title;
  final List<Option> options;
  final DefaultOption defaultOption;

  final double width;
  final double cornerRadius;

  @override
  State<SectionButton> createState() => _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {
  bool _isExpanded = false;
  late int _optionSelected;

  @override
  void initState() {
    super.initState();
    _optionSelected = widget.defaultOption == DefaultOption.first
        ? 0
        : widget.options.length - 1;
  }

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
            ...widget.options
                .asMap()
                .entries
                .map((entry) => _optionWidget(entry.key, entry.value))
                .toList(),
        ],
      ),
    );
  }

  void _selectOption(int index, Option option) {
    _optionSelected = index;
    option.clickAnswerCallback(context);
    setState(() {});
  }

  GestureDetector _optionWidget(int index, Option option) {
    return GestureDetector(
      onTap: () => _selectOption(index, option),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          option.title(context),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: _optionSelected == index
                  ? Theme.of(context).colorScheme.onSecondary
                  : Colors.black),
        ),
      ),
    );
  }
}
