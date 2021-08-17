import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Stranger...';
    } else if (resultScore <= 14) {
      resultText = 'Just bad...';
    } else if (resultScore <= 23) {
      resultText = 'Good';
    } else if (resultScore <= 32) {
      resultText = 'So good';
    } else {
      resultText = 'You know me well';
    }
    return resultText + '\nscore: ' + resultScore.toString() + ' From 40';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Personality Quiz',
              style:
                  TextStyle(color: Colors.black, decorationColor: Colors.black),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
