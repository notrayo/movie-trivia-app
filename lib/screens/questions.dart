import 'package:flutter/material.dart';
import 'package:movie_trivia/widgets/app_background.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBackground(
        child: Center(
      child: Text('quiz starts here...'),
    ));
  }
}
