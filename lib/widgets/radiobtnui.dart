import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class Radiobtn extends StatefulWidget {
  const Radiobtn({super.key});

  @override
  State<Radiobtn> createState() => _RadiobtnState();
}

class _RadiobtnState extends State<Radiobtn> {
  int _currentIndex = -1;

  final List<String> radioButtons = <String>[
    'RadioButton 1',
    'RadioButton 2',
    'RadioButton 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(radioButtons.length, (index) {
          return RadioButton(
            checked: _currentIndex == index,
            // set onChanged to null to disable the button
            onChanged: (value) => setState(() => _currentIndex = index),
            content: Text(radioButtons[index]),
          );
        }),
      ),
    );
  }
}
