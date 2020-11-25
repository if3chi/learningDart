import 'package:flutter/material.dart';
import 'package:todoey/components/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function todoCallBack;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.todoCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 35,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Checkbox(
          value: isChecked,
          checkColor: Colors.white,
          activeColor: kRedRoseLight,
          onChanged: todoCallBack,
        ),
      ),
    );
  }
}
