import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {
          'text': 'Pink',
          'score': 5,
        },
        {
          'text': 'Blue',
          'score': 6,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'purple',
          'score': 9,
        },
        {
          'text': 'black',
          'score': 10,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {
          'text': 'cat',
          'score': 6,
        },
        {
          'text': 'dog',
          'score': 2,
        },
        {
          'text': 'rabbit',
          'score': 1,
        },
        {
          'text': 'snake',
          'score': 10,
        },
        {
          'text': 'gorilla',
          'score': 5,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite game',
      'answers': [
        {
          'text': 'Fifa',
          'score': 6,
        },
        {
          'text': 'Mario',
          'score': 1,
        },
        {
          'text': 'Pokemon',
          'score': 5,
        },
        {
          'text': 'Monster Hunter',
          'score': 8,
        },
        {
          'text': 'Call of Dutty',
          'score': 10,
        },
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuizz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('there are more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartQuizz),
      ),
    );
  }
}
