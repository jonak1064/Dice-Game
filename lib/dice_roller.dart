//import 'dart:html';

import 'package:dice_game/rounds.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:dice_game/player1.dart';
import 'package:dice_game/player2.dart';

//import 'package:flutter/widgets.dart';

//import 'package:flutter/widgets.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();
//Widget topText1 = const Text(' ');
//Widget topText2 = const Text(' ');

var finalScore1 = 0;
var finalScore2 = 0;

Widget finalResult = const Text(' ');

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
      finalScore1 = 0;
      finalScore2 = 0;
      finalScore1 = finalScore1 + currentDiceRoll1;
      finalScore2 = finalScore2 + currentDiceRoll2;

      if (finalScore1 > finalScore2) {
        finalResult = const Text(
          'Player 1 wins the game',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        );
      } else if (finalScore1 < finalScore2) {
        finalResult = const Text(
          'Player 2 wins the game',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        );
      } else {
        finalResult = const Text(
          'Its a tie!',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        );
      }
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Player1(currentDiceRoll1: currentDiceRoll1),
                Player2(currentDiceRoll2: currentDiceRoll2),
              ]),
          const SizedBox(height: 40),
          const Text('How many rounds do you want to play?'),
          const SizedBox(height: 30),
          const Rounds(),
          const SizedBox(height: 40),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28.0,
                )),
            child: const Text('Roll'),
          ),
          const SizedBox(height: 20),
          finalResult,
        ],
      ),
    );
  }
}
