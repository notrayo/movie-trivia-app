import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.onPress, required this.answerOption});

  final VoidCallback onPress;
  final String answerOption;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 15, 1, 1),
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
      child: Align(alignment: Alignment.centerLeft, child: Text(answerOption)),
    );
  }
}
