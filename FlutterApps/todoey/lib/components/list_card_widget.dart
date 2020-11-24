import 'package:flutter/material.dart';
import 'package:todoey/components/constants.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTileCard(),
        ListTileCard(),
        ListTileCard(),
        ListTileCard(),
      ],
    );
  }
}

class ListTileCard extends StatefulWidget {
  @override
  _ListTileCardState createState() => _ListTileCardState();
}

class _ListTileCardState extends State<ListTileCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '1. Task',
        style: TextStyle(
          color: Colors.black,
          fontSize: 35,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TodoCheckBox(
        isChecked: isChecked,
        todoCheck: (value) {
          setState(() {
            isChecked = value;
          });
        },
      ),
    );
  }
}

class TodoCheckBox extends StatelessWidget {
  TodoCheckBox({this.isChecked, this.todoCheck});

  final bool isChecked;
  final Function todoCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Checkbox(
          value: isChecked,
          checkColor: Colors.white,
          activeColor: kRedRoseLight,
          onChanged: todoCheck),
    );
  }
}
