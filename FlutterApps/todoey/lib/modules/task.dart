class Task {
  String taskTitle;
  bool isDone;

  Task({this.taskTitle, this.isDone});

  void checkDone() {
    isDone = !isDone;
  }
}
