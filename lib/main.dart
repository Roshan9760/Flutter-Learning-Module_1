import 'package:flutter/material.dart';
import 'package:app_6/gradient_container.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(body: GradientContainer(
        Colors.deepPurple,
        Colors.blueGrey,
    )),
  ));
}

