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
        Color.fromARGB(242, 8, 0, 23),
        Color.fromARGB(255, 236, 29, 40)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: child,
    );
  }
}
