import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? Color.fromARGB(255, 52, 236, 214)
              : Color.fromARGB(255, 248, 81, 237),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 10, 10, 10),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
