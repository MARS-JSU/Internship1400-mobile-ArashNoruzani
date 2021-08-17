import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(ArashPersonality());
}

class ArashPersonality extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ArashPersonalityState();
  }
}

class _ArashPersonalityState extends State<ArashPersonality> {
  final _questions = const [
    {
      'qText': 'What\'s my favorite color?',
      'answers': [
        {'text': 'Black', 'score': 8},
        {'text': 'Ice Blue', 'score': 10},
        {'text': 'Yellow', 'score': 1},
        {'text': 'White', 'score': 5},
      ],
    },
    {
      'qText': 'What\'s my favorite animal?',
      'answers': [
        {'text': 'Ant', 'score': 1},
        {'text': 'Snake', 'score': 8},
        {'text': 'Cat', 'score': 10},
        {'text': 'Tiger', 'score': 5},
      ],
    },
    {
      'qText': 'What\'s my favorite counry?',
      'answers': [
        {'text': 'Amrica', 'score': 5},
        {'text': 'Canada', 'score': 8},
        {'text': 'Sweden', 'score': 10},
        {'text': 'Mexico', 'score': 1},
      ],
    },
    {
      'qText': 'what do i like more?',
      'answers': [
        {'text': 'Coding', 'score': 8},
        {'text': 'Going out', 'score': 1},
        {'text': 'Video games', 'score': 10},
        {'text': 'Sleeping', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('Answered question number' + _questionIndex.toString());
    } else {
      print('All done');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arash\'s Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
