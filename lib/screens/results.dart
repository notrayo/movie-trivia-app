import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.onRestartQuiz});

  final void Function() onRestartQuiz;

  @override
  Widget build(BuildContext context) {
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
                'You answered X out of Y questions',
                style: GoogleFonts.quicksand(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
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
