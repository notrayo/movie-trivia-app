import 'package:flutter/material.dart';
import 'package:movie_trivia/widgets/answers_listbox.dart';

class ListedResultsScreen extends StatelessWidget {
  const ListedResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/a5ead4e9431dca01ba9733efb16ec951.jpg'),
                  fit: BoxFit.cover)),
        ),
        Column(
            //children: [AnswersWidget(summaryData: summaryData)],
            )
      ],
    );
  }
}
