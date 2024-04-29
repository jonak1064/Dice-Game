//import 'dart:html';

import 'dart:html';

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
Widget result1 = const Text(' ');
Widget result2 = const Text(' ');
Widget result3 = const Text(' ');

var finalScore1 = 0;
var finalScore2 = 0;

var rollCount = 5;
var roundCount = 1;
Widget finalResult = const Text(' ');

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 1;

  void rollDice() {
    if (roundCount < rollCount) {
      setState(() {
        currentDiceRoll1 = randomizer.nextInt(6) + 1;
        currentDiceRoll2 = randomizer.nextInt(6) + 1;
        roundCount++;
        finalScore1 = finalScore1 + currentDiceRoll1;
        finalScore2 = finalScore2 + currentDiceRoll2;
      });
    } else {
      setState(() {
        finalResult = const Text('Game Over');

        if (finalScore1 > finalScore2) {
          setState(() {
            result1 = const Text('Player 1 wins');
            result2 = Text(finalScore1.toString());
            result3 = Text(finalScore2.toString());
          });
        } else if (finalScore1 < finalScore2) {
          setState(() {
            result1 = const Text('Player 2 wins');
            result2 = Text(finalScore1.toString());
            result3 = Text(finalScore2.toString());
          });
        } else {
          setState(() {
            result1 = const Text('its a tie!');
            result2 = Text(finalScore1.toString());
            result3 = Text(finalScore2.toString());
          });
        }
      });
    }
  }

  void fiveTimes() {
    setState(() {
      rollCount = 5;
    });
  }

  void tenTimes() {
    setState(() {
      rollCount = 10;
    });
  }

  void twentyTimes() {
    setState(() {
      rollCount = 20;
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
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: fiveTimes,
                style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 101, 65, 65),
                    textStyle: const TextStyle(
                      fontSize: 24.0,
                      decorationThickness: BorderSide.strokeAlignCenter,
                    )),
                child: const Text('5'),
              ),
              TextButton(
                onPressed: tenTimes,
                style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 101, 65, 65),
                    textStyle: const TextStyle(
                      fontSize: 24.0,
                    )),
                child: const Text('10'),
              ),
              TextButton(
                onPressed: twentyTimes,
                style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 101, 65, 65),
                    textStyle: const TextStyle(
                      fontSize: 24.0,
                    )),
                child: const Text('20'),
              ),
            ],
          ),
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
          result1,
          finalResult,
          result2,
          const SizedBox(height: 10),
          result3,
        ],
      ),
    );
  }
}
