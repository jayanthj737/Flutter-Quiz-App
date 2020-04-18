import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Lightning never strikes in the same place twice', a: false),
    Question(
        q: 'If you cut an earthworm in half, both halves can regrow their body.',
        a: false),
    Question(q: 'Goldfish only have a memory of three seconds', a: false),
    Question(
        q: 'Your fingernails and hair do not keep growing after you die.',
        a: true),
    Question(
        q: 'Buzz Aldrin was the first man to urinate on the moon', a: true),
    Question(q: 'Humans can’t breathe and swallow at the same time.', a: true),
    Question(
        q: 'The top of the Eiffel Tower leans away from the sun.', a: true),
    Question(
        q: 'There are McDonald\'s on every continent except one.', a: true),
    Question(q: 'In Japan they grow triangular watermelons.', a: false),
    Question(q: 'Humans are the only animals that bury their dead.', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
