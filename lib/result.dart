import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restHandler;

  Result(this.resultScore, this.restHandler);

  String get resultPharse {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are so .... strange?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPharse,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(onPressed: restHandler, child: Text('Rest the test'))
        ],
      ),
    );
  }
}