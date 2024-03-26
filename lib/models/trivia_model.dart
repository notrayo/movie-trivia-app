import '../screens/trivia.dart';

class TriviaQuestion {
  const TriviaQuestion(this.question, this.multipleAnswers);

  final String question;
  final List<String> multipleAnswers;

  //shuffled answers

  List<String> getShuffledAnswers() {
    final shuffledAnswersList = List.of(multipleAnswers);
    shuffledAnswersList.shuffle();

    return shuffledAnswersList;
  }
}
