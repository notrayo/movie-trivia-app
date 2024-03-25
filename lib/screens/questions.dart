import 'package:flutter/material.dart';
import 'package:movie_trivia/data/trivia_data.dart';
import 'package:movie_trivia/widgets/answer_button.dart';
//import 'package:movie_trivia/models/trivia_model.dart';
import 'package:movie_trivia/widgets/app_background.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = triviaQuestions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: AppBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.quicksand(
                  fontSize: 29,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              onPress: nextQuestion,
              answerOption: currentQuestion.multipleAnswers[0],
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              onPress: () {},
              answerOption: currentQuestion.multipleAnswers[1],
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              onPress: () {},
              answerOption: currentQuestion.multipleAnswers[2],
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              onPress: () {},
              answerOption: currentQuestion.multipleAnswers[3],
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              onPress: () {},
              answerOption: currentQuestion.multipleAnswers[4],
            )
          ],
        ),
      ),
    );
  }
}
