import 'package:flutter/material.dart';
import 'QnA.dart';
void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<Question_Answer> bank = [
    Question_Answer(q:'This is first Question', a: false),
    Question_Answer(q: 'This is second Question', a: true),
    Question_Answer(q: 'This is third Question', a: false),
  ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                bank[questionNumber].questionsText,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  bool correctAnswer = bank[questionNumber].answers;
                  if(correctAnswer == true){
                    print('user got it right!');
                  }else{
                    print('user got it wrong!');
                  }
                  setState(
                    () {
                      questionNumber++;
                      /*scoreKeeper.add(
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );*/
                    },
                  );
                },
              )),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = bank[questionNumber].answers;
                if(correctAnswer == false){
                  print('user got it right!');
                }else{
                  print('user got it wrong!');
                }
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(children: scoreKeeper)
      ],
    );
  }
}
