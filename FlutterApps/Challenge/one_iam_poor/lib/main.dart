import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff92b7d0),
        appBar: AppBar(
          backgroundColor: Color(0xff5b839c),
          toolbarHeight: 70,
          title: Text(
            "App Challenge 1: I am poor!",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Image(
          image: AssetImage('img/iampoor.jpg'),
          // width: 300,
          // height: 280,
          // fit: BoxFit.contain,
        )),
      ),
    ));
