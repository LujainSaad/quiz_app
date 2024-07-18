import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chooseAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    final int length = questions.length < chooseAnswers.length
        ? questions.length
        : chooseAnswers.length;

    for (var i = 0; i < length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly! ',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 233, 216, 252), fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData: summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz!'),
          ),
        ]),
      ),
    );
  }
}
