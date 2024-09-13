import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceNumber = 6;
  void rollDice() {
    //  code
    setState(() {
      currDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currDiceNumber.png',
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: rollDice,
              child: const Text(
                'Roll Dice',
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 241, 214),
                  fontSize: 30,
                ),
              ))
        ],
      ),
    );
  }
}
