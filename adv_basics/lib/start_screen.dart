import 'package:flutter/material.dart';
import 'package:adv_basics/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // OutlinedButton.icon(
          //   onPressed: startQuiz,
          //   style: OutlinedButton.styleFrom(
          //     foregroundColor: Colors.white,
          //   ),
          //   icon: const Icon(Icons.arrow_right_alt),
          //   label: const Text('Start Quiz'),
          // )
          // Change icon to the left
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Start Quiz'),
                Icon(Icons.arrow_right_alt),
              ],
            ),
          )
        ],
      ),
    );
  }
}
