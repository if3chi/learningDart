import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.green,
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.green,
                  width: 100.0,
                  height: 100.0,
                )
              ],
            ),
            Container(
              color: Colors.grey,
              child: Text(
                "Ifechi",
                style: TextStyle(fontSize: 90, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Text(
                "Ifechi",
                style: TextStyle(fontSize: 90, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.green,
              child: Text(
                "Ifechi",
                style: TextStyle(fontSize: 90, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.black12,
              child: Text(
                "Ifechi",
                style: TextStyle(fontSize: 90, color: Colors.white),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
