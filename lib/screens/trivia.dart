import 'package:flutter/material.dart';
import 'package:movie_trivia/data/trivia_data.dart';
import 'package:movie_trivia/screens/home.dart';
import 'package:movie_trivia/screens/listed_results.dart';
import 'package:movie_trivia/screens/questions.dart';
import 'package:movie_trivia/screens/results.dart';
//import 'package:movie_trivia/widgets/app_background.dart';

class TriviaApp extends StatefulWidget {
  const TriviaApp({super.key});

  @override
  State<TriviaApp> createState() => _TriviaAppState();
}

class _TriviaAppState extends State<TriviaApp> {
  late Widget activeScreen;

  List<String> selectedAnswers = [];

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
      activeScreen = QuestionsScreen(
        onSelectedAnswer: chosenAnswer,
      );
    });
  }

  //chosen answers function

  void chosenAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == triviaQuestions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          onRestartQuiz: restartQuiz,
          onCheckResults: checkResults,
          selectedAnswerz: selectedAnswers,
        );
      });

      selectedAnswers = [];
    }
  }

  //restart quiz

  void restartQuiz() {
    setState(() {
      activeScreen = HomeScreen(beginQuiz: switchScreen);
    });
  }

  //check results

  void checkResults() {
    setState(() {
      activeScreen = ListedResultsScreen();
    });
  }

  //back to results screen

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: activeScreen),
      ),
    );
  }
}
