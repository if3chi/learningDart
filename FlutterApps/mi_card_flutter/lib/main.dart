import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
              radius: 110,
              backgroundColor: Colors.amberAccent,
              backgroundImage: AssetImage('img/avatar.jpg'),
            ),
            Text(
              'Jaspar Ifechi',
              style: TextStyle(
                  fontSize: 55,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'Developer & Fashion Designer',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'SourceSansPro',
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    // size: 25,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '055 805 5070',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal.shade600,
                      fontFamily: 'SourceSansPro',
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    // size: 25,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ifechi@abc.com',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal.shade600,
                      fontFamily: 'SourceSansPro',
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ));
}
