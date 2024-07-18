import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({required this.itemData, super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment
          .start, // So the numbers will align to the top of the row
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // So the texts will align to the left
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 201, 95, 244),
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 95, 244, 204),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
