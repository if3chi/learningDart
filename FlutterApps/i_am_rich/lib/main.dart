import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title:
              Text("I Am RICH", style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blueGrey[900],
          toolbarHeight: 72,
        ),
        body: Center(
            child: Image(
          image: AssetImage('images/IamRich.jpg'),
        )),
      ),
    ));
