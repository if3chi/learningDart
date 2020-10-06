int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

num multiply(int a, int b) => a * b;

num divide(int a, int b) => a / b;

num arithCalc(Function f, int a, int b) {
  return f(a, b);
}

main() {
  int num1 = 20;
  int num2 = 30;

  print('$num1 + $num2 = ${arithCalc(add, num1, num2)}');
  print('$num1 - $num2 = ${arithCalc(subtract, num1, num2)}');
  print('$num1 / $num2 = ${arithCalc(divide, num1, num2)}');
  print('$num1 * $num2 = ${arithCalc(multiply, num1, num2)}');
}
