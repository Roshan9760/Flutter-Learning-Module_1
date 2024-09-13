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
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(181, 249, 8, 33),
            Color.fromARGB(181, 249, 8, 33),
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Style_Text("Helo World "),
      ),
    );
  }
}
