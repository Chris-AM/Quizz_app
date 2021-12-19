import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are normal';
    } else if (resultScore <= 16) {
      resultText = 'You like darkness';
    } else {
      resultText = 'You are pure evil!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton(
            onPressed: resetHandler,
            style: OutlinedButton.styleFrom(
              primary: Colors.deepPurple,
              side: const BorderSide(color: Colors.deepPurple, width: 1.0),
            ),
            child: const Text('Restart Test'),
          )
        ],
      ),
    );
  }
}
