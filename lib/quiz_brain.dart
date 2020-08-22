import 'QnA.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question_Answer> _bank = [
    Question_Answer(q: 'This is first Question'  , a: false),
    Question_Answer(q: 'This is second Question' , a: true),
    Question_Answer(q: 'This is third Question'  , a: false),
    Question_Answer(q: 'This is Fourth Question' , a: true),
    Question_Answer(q: 'This is Fifth Question'  , a: false),
    Question_Answer(q: 'This is Sixth Question'  , a: false),
    Question_Answer(q: 'This is Seventh Question', a: true),
    Question_Answer(q: 'This is Eight Question'  , a: false),
  ];

  void nextQuestion(){
    if(_questionNumber<_bank.length-1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _bank[_questionNumber].questionsText;
  }
  bool getCorrectAns(){
    return _bank[_questionNumber].answers;
  }

  bool isFinished() {
    if (_questionNumber >= _bank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
