main() {
  var lis = [1];

  if (lis.isNotEmpty) {
    lis.clear();
    print('Lis is Cleared $lis');
  } else {
    print('lis is empty');
  }

  int a = 10;
  int b = 20;

  // tanery operator

  int result = a > b ? a * b : b ~/ a;

  print(result);

  // conditional expression exp1 ?? exp2; returns non-null value

  String empty = null;

  print('${empty ?? "I show up because it's null"}');
}
