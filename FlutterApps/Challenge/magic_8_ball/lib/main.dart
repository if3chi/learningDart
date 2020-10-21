import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade700,
          title: Text(
            'Ask me Anything!',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 25,
            ),
          ),
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<Ball> {
  int ballNum = 1;
  Widget build(BuildContext context) => Center(
        child: Container(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
              });
            },
            child: Expanded(
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ),
      );
}
