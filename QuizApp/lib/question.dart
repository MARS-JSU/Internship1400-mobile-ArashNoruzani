import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
