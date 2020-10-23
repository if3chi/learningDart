class Student {
  String _name;
  double percent;

  void set scorePercentage(double score) => percent = (score / 75) * 100;
  double get scorePercentage {
    return percent;
  }

  void set studentName(String n) {
    _name = n;
  }

  String get studentName => _name;
}

main() {
  var student = Student();

  student.studentName = 'Ifechi';
  student.scorePercentage = 90;

  print('${student.studentName} scored: ${student.scorePercentage}%');
}
