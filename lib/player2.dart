import 'package:flutter/material.dart';

class Player2 extends StatelessWidget {
  const Player2({super.key, required this.currentDiceRoll2});

  // Widget topText2;
  final int currentDiceRoll2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Player 2',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 40),
        // topText2,
        const SizedBox(height: 40),
        Image.asset(
          'assets/images/dice-$currentDiceRoll2.png',
          width: 200.0,
        ),
      ],
    );
  }
}
