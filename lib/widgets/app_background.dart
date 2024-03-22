import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 8, 0, 23),
        Color.fromARGB(255, 15, 15, 164)
      ], begin: Alignment.topLeft, end: Alignment.centerRight)),
      child: child,
    );
  }
}
