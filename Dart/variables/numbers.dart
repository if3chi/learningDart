main() {
  /* num datatype: are variables that have numbers.
    and also sub divided into two: int and double subtypes.
  */
  num num1 = 1.1;
  num num2 = 2;

  // int sub datatype of num, numbers without decimal points.
  int num3 = 3;
  // hex number
  int hex = 0x1636F;
  int hexReversed = 0xDE63D;

  // double sub datatype of num, numbers with decimal points.
  double simpleNum =
      1; //will be automatically converted to double as of dart v2.1
  double simpleNum2 = 2.0;
  double exp = 1.42e5;

  print(num1);
  print(num2);
  print(num3);
  print(hex);
  print(hexReversed);

  print("\ndoubles");
  print(simpleNum);
  print(simpleNum2);
  print(exp);
}
