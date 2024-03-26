import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_trivia/data/trivia_data.dart';
//import 'package:movie_trivia/models/trivia_model.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.onRestartQuiz,
      required this.onCheckResults,
      required this.selectedAnswerz});

  final void Function() onRestartQuiz;
  final void Function() onCheckResults;

  final List<String> selectedAnswerz;

  List<Map<String, Object>> getSummaryDataOfAnswers() {
    final List<Map<String, Object>> summaryDataOfAnswersList = [];

    for (var i = 0; i < selectedAnswerz.length; i++) {
      summaryDataOfAnswersList.add({
        'question_index': i,
        'question': triviaQuestions[i].question,
        'correct_answer': triviaQuestions[i].multipleAnswers[0],
        'selected_answer': selectedAnswerz[i],
        'no_of_questions': selectedAnswerz.length
      });
    }

    return summaryDataOfAnswersList;
  }

  @override
  Widget build(BuildContext context) {
    final summaryDataOfAnswers = getSummaryDataOfAnswers();
    final noOfQuestions = selectedAnswerz.length;
    final noOfCorrectlyAnswered = summaryDataOfAnswers.where(
      (element) {
        return element['selected_answer'] == element['correct_answer'];
      },
    ).length;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage('assets/493db1500d0801b2f3ee2902e011ac17.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'WELL DONE !!',
                style: GoogleFonts.quicksand(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'You answered $noOfCorrectlyAnswered out of $noOfQuestions questions',
                style: GoogleFonts.quicksand(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: onCheckResults,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 28, 110, 3),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  icon: const Icon(Icons.exit_to_app),
                  label: const Text('Check Results')),
              const SizedBox(
                height: 430,
              ),
              ElevatedButton(
                  onPressed: onRestartQuiz,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 105, 2, 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  child: const Text('Restart Quiz'))
            ],
          ),
        )
      ],
    );
  }
}
