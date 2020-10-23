import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget displatBtn(int soundNum, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          player.play('note$soundNum.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              displatBtn(1, Colors.red),
              displatBtn(2, Colors.orange),
              displatBtn(3, Colors.yellow),
              displatBtn(4, Colors.blue),
              displatBtn(5, Colors.green),
              displatBtn(6, Colors.teal),
              displatBtn(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
