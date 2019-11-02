import 'package:belajar_flutter/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

//void main(){
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _score = 0;
  final _question = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s your favorite game ?',
      'answers': [
        {'text': 'AoV', 'score': 10},
        {'text': 'Mobile Legend', 'score': 9},
        {'text': 'LoL', 'score': 8},
        {'text': 'Dota 2', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal ?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 4},
        {'text': 'Duck', 'score': 6},
        {'text': 'Goose', 'score': 8}
      ]
    },
  ];

  _resetQuestion(){
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  _answerquestion(int score) {
    _score += score;
    print(_score);
    if (_questionIndex < _question.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    } else {
      print('No more Question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rotio App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(_question, _questionIndex, _answerquestion)
            : Result(_resetQuestion,_score),
      ),
    );
  }
}
