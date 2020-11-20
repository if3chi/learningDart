import 'package:flutter/material.dart';
import 'package:todoey/components/constants.dart';

class AddTask extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: kHeading.copyWith(color: kRedRose),
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    // TODO: Style textfield
                    ),
                autofocus: true,
                style: TextStyle(
                  color: kRedRoseLight,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              RaisedButton(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.note_add_sharp,
                      color: Colors.white,
                      size: 32.0,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  // Implement add task.
                },
                elevation: 5,
                color: kRedRoseLight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
