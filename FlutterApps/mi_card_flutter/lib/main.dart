import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
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
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                thickness: 3,
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    // size: 25,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '055 805 5070',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal.shade600,
                      fontFamily: 'SourceSansPro',
                    ),
                  )),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    // size: 25,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'ifechi@abc.com',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal.shade600,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ))
          ],
        )),
      ));
}
