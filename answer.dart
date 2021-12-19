import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
