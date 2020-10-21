import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red.shade600,
          toolbarHeight: 70,
          title: Center(
            child: Text(
              "Dice App",
              style: TextStyle(
                color: Colors.red.shade50,
                fontSize: 45,
                fontFamily: 'Mulish-Black',
                letterSpacing: 6,
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  int count = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text(
                (count == 0) ? 'No Rolls yet' : 'Rolled $count times.',
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Mulish-Reg',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    // flex: 3,
                    padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                    onPressed: () {
                      pressBtn();
                    },
                    child: Image.asset('images/dice$leftDiceNum.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.fromLTRB(10, 0, 8, 0),
                    // flex: 1,
                    onPressed: () {
                      pressBtn();
                    },
                    child: Image.asset('images/dice$rightDiceNum.png'),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text(
                'Total Roll Result(s): $total',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mulish-Reg',
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pressBtn() {
    setState(() {
      count++;
      rightDiceNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
      total += rightDiceNum + leftDiceNum;
    });
  }
}
