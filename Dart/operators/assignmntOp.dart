main() {
  var num1 = 20;
  var num2 = 30;
  var num3 = 10;
  var num4 = 7;
  String tab = '\t';

  var num5 = 10;
  var num6 = 7;

  print("num1 += num2 $tab ${num1 += num2}");
  print("num1 &= num2 $tab ${num3 &= num4}");
  print("num1 ~/= num2 $tab ${num5 ~/= num6}");

// bitwise operation
  print(10 & 02);
  print(10 << 02);
  print(10 >> 02);
  print(10 ^ 012);
  print(10 | 7);
}
