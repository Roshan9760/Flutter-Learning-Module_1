import 'package:flutter/material.dart';
import 'package:app_6/styled_text.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  // adding constructor function
  //1. GradientContainer(){

  // }
  // 2. const GradientContainer({Key?key}) : super(key: key);

  // 3rd ways to add
  const GradientContainer(this.colors1, this.colors2, {super.key});

  final Color colors1;
  final Color colors2;

  void rollDice() {
    //  code
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors1,
            colors2,
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-4.png',
              width: 200,
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
      ),
    );
  }
}
