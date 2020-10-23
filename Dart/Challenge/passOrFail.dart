/**
 * Problem Statement #

Given the final percentage a student has gotten at the end of a semester, you need to write a program that decides if the student has passed or failed the semester.

If the percentage is higher than or equal to 60, the student has passed the semester. If the percentage is lower than 60, the student has failed the semester.

However, the percentage is not the only thing that determines if a student has passed or failed. A student does not pass if their score is 5 points below the class average.

For instance, if the average class score is 70, the student must have a minimum score of 65 to pass.

If the average class score is 50, the student still needs a score of 60 to pass based on our first condition.
 */

import 'dart:io';

main() {
  int percentage;
  var average;
  var scores = [50, 96, 57, 68, 52, 87, 97, 43, 81, 30, 75, 60, 59];
  int totalScore = scores.fold(0, (p, c) => p + c);

  average = totalScore / scores.length;

  print('Enter percentage: ');
  percentage = int.parse(stdin.readLineSync());
  // print("Enter Average");
  // average = int.parse(stdin.readLineSync());

  if (percentage >= 60 && average - percentage <= 5) {
    print("pass");
  } else {
    print("fail");
  }
}
