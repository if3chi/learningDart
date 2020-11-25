import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/modules/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskTitle: 'Tsk 1', isDone: false),
    Task(taskTitle: 'Tsk 2', isDone: false),
    Task(taskTitle: 'Tsk 3', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].taskTitle,
          todoCallBack: (value) {
            setState(() {
              // tasks[index].checkDone();
              tasks[index].isDone = value;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
