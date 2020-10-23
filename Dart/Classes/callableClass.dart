class Student {
  // the call methid can be empty with no type.
  String call(name, age) => 'Student Name: $name\nStudent  Age: $age';
}

main() {
  var student = Student();

  print(student('Faith', '35'));
}
