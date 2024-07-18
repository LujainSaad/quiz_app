class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList
        .shuffle(); // This wont violate *Final* role of reassigning the values because it only change positions

    return shuffledList;
  }
}
