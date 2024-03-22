import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.beginQuiz});

  final void Function() beginQuiz;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/3113108c0b1d1e8db8c22e9574835ec3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'MOVIE TRIVIA APP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'You think you know movies, huh ? Alright tough guy, hit the button to really see if you a wise guy or just a big mouth. Capisce ? ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: beginQuiz,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 88, 7, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 13)),
                child: const Text('Begin Quiz'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
