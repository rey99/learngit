import 'package:quiz/utils/Questions.dart';

class Quiz{
  List<Question> _questions;
  int _currentQuestinIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }

  List<Question> get questions => _questions;
  int get score => _score;
  int get length => _questions.length;
  int get questionNnumber => _currentQuestinIndex+1;

  Question get nextQuestion{
    _currentQuestinIndex++;
    if(_currentQuestinIndex >= length) return null;
    return _questions[_currentQuestinIndex];
  }

  void answer(bool isCorrect){
    if(isCorrect) _score++;
    
  }
}