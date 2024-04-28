import 'package:flutter/material.dart';
import 'package:dice_game/dice_roller.dart';
//import 'package:flutter_application_4/styled_text.dart';
//import 'package:flutter_application_4/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endtAlignment = Alignment.bottomRight;

class GradeintContainer extends StatelessWidget {
  const GradeintContainer(
      {super.key, required this.colors1}); //another method of taking parameters

  final List<Color> colors1; //declaring the parameter

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors1, //using the varaible that was declared as parameters
          begin: startAlignment,
          end: endtAlignment,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
