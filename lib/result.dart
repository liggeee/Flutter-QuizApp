import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function answerHandler;
  final int resultScore;

  Result(this.answerHandler, this.resultScore);

  String get resultPhrease {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'Not Bad \nYour score is ${resultScore}';
    } else if (resultScore <= 25) {
      resultText = 'You are Awesome \nYour score is ${resultScore}';
    } else if (resultScore < 30) {
      resultText = 'You are Great \nYour score is ${resultScore}';
    } else {
      resultText = 'God Like \nYour score is ${resultScore}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          resultPhrease,
          style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text('Reset Quizt'),
          onPressed: answerHandler,
          color: Colors.blue,
          textColor: Colors.white,
        )
      ],
    ));
  }
}
