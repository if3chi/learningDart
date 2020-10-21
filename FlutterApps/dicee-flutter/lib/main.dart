import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
