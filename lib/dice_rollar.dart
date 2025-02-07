import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rolldice() {
    setState(() {});
    currentDiceRoll = randomizer.nextInt(6) + 1;
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 40),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 25,
            ),
          ),
          child: const Text('Roll The Dice'),
        )
      ],
    );
  }
}
