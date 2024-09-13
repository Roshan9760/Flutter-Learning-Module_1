import 'package:flutter/material.dart';

void main() {

  runApp(
     MaterialApp(
       home: Scaffold(
         body: GradientContainer()
       ),
     )

  );
}

class GradientContainer extends StatelessWidget {

     @override
     Widget build( context) {
      
       return  Container(  
           decoration:const BoxDecoration(
            gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(181, 249, 8, 33),
                      Color.fromARGB(181, 249, 8, 33)
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight
            ),
           ),
           child:const Center(
             child: Text(
               'Hello World !',
               style: TextStyle(
                 color: Color(0xFFfdf2e9),
                 fontSize: 30
               ),
             ),
           ),
         );
  }
}

