main() {
  var num1 = 100;
  var num2 = 10;
  String tab = "\t" * 2;

  // arithemetic operators
  print("Addition(+) $tab ${num1 + num2}"); //Addition
  print("Subtraction(-) $tab ${num1 - num2}"); //Subtraction
  print("Division(/) $tab ${num1 / num2}"); //Division
  print("Division(~/) $tab ${num1 ~/ num2}"); // Division but returns an integer
  print("Multiplication(*) \t ${num1 * num2}"); // Multiplication
  print(
      "Modulous(%) $tab ${num1 % num2}"); // Modulous return the remainder after division.

  //prefix and postfix increament
  print("\nprefix and postfix increament");
  print(++num1); //prefix
  print(num1++); //postfix
  print(num1);

  //prefix and postfix decreament
  print("\nprefix and postfix decreament");
  print(--num2); //prefix
  print(num2--); //postfix
  print(num2);
}
