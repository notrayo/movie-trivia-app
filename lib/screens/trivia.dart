import 'package:flutter/material.dart';
import 'package:movie_trivia/screens/home.dart';
import 'package:movie_trivia/screens/questions.dart';
import 'package:movie_trivia/widgets/app_background.dart';

class TriviaApp extends StatefulWidget {
  const TriviaApp({super.key});

  @override
  State<TriviaApp> createState() => _TriviaAppState();
}

class _TriviaAppState extends State<TriviaApp> {
  late Widget activeScreen;

  @override
  void initState() {
    activeScreen = HomeScreen(
      beginQuiz: switchScreen,
    );

    super.initState();
  }

  //begin quiz function

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: activeScreen),
      ),
    );
  }
}
