import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget displatBtn({int soundNum, Color color, String text}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          player.play('note$soundNum.wav');
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        ),
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
              displatBtn(soundNum: 1, color: Colors.red, text: 'DO'),
              displatBtn(soundNum: 2, color: Colors.orange, text: 'RE'),
              displatBtn(soundNum: 3, color: Colors.yellow, text: 'MI'),
              displatBtn(soundNum: 4, color: Colors.green, text: 'FA'),
              displatBtn(soundNum: 5, color: Colors.teal, text: 'SO'),
              displatBtn(
                  soundNum: 6, color: Colors.purple.shade600, text: 'LA'),
              displatBtn(soundNum: 7, color: Colors.blue, text: 'TI'),
            ],
          ),
        ),
      ),
    );
  }
}
