import 'package:flutter/material.dart';

class Style_Text extends StatelessWidget {
 
  Style_Text(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return  Text(
      text,
      style: const TextStyle(color: Color(0xFFfdf2e9), fontSize: 30),
    );
  }
}
