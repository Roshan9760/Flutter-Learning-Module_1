import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
   var activeImage = 'assets/images/dice-4.png';
  void rollDice() {
    //  code
    setState(() {
      activeImage = 'assets/images/dice-2.png';
    });
  }
  
  @override
  Widget build(context) {

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeImage,
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
           TextButton(
              onPressed: rollDice,
              child:const Text(
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
