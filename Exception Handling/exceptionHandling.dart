import 'dart:io';

main() {
  int num1 = 9;
  int num2 = 0;

  // Case 1: Printing the error with stacktrace
  try {
    int result = num1 ~/ num2;
    print('$num1 / $num2 = $result');
  } catch (e, s) {
    print('Case 1\n$e error occured.');
    // Prints the Stack Trace
    print('StackTrace\n[$s}');
  }

  // Case 2: using on keyword since error is known
  try {
    print(num1 ~/ num2);
  } on IntegerDivisionByZeroException {
    print('\nCase 2\nYou can\'t divide by 0');
  }

  // Case 3: using finally keyword
  try {
    print(num1 ~/ 0);
  } catch (e) {
    print('\nCase 3\n$e error was thrown.');
  } finally {
    print('finally clause always runs regardless'
        ' of whether error was thrown or not.');
  }

// Case 4: Custom Exception Handling
  try {
    guess(0);
  } catch (e) {
    print('\nCase 4\n${e.errorMsg()}');
  } finally {
    print('finally clause also works here as well as stacktrace.');
  }

  // or

  try {
    guess(0);
  } on GuessException {
    print('\nUsing on keyword\non keyword works.');
  } finally {
    print('finally clause also works here as well as stacktrace.');
  }
}

class GuessException implements Exception {
  String errorMsg() => "You cannot guess a number less than 1";
}

void guess(int n) {
  if (n < 1) {
    throw new GuessException();
  }
}
