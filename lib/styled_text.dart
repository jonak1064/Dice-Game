import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,
      {super.key}); //used this.text as a parameter to use in the method

  final String text; //this text is the text used in parameters

  @override
  Widget build(context) {
    return Text(
      text, //used here
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
