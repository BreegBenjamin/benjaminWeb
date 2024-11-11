import 'package:flutter/material.dart';

class BackgroundApp extends StatelessWidget {
  const BackgroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 224, 226, 211),
          Color.fromARGB(255, 228, 228, 214),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
      height: double.infinity,
      width: double.infinity,
    );
  }
}
