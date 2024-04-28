import 'package:flutter/material.dart';

class Player1 extends StatelessWidget {
  const Player1({super.key, required this.currentDiceRoll1});

  // Widget topText1;
  final int currentDiceRoll1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Player 1',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 40),
        //topText1,
        const SizedBox(height: 40),
        Image.asset(
          'assets/images/dice-$currentDiceRoll1.png',
          width: 200.0,
        ),
      ],
    );
  }
}
