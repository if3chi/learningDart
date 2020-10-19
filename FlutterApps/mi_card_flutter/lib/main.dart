import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.redAccent,
                width: 100,
                height: double.infinity,
              ),
              SizedBox(width: 40.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  )
                ],
              ),
              SizedBox(width: 40.0),
              Container(
                color: Colors.blue,
                width: 100,
                height: double.infinity,
              ),
            ],
          ),
        ),
      ));
}
