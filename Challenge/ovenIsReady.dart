import 'dart:io';

/**
 * Problem Statement #

Your oven has an initial temperature and you need to heat it to 375o. If the temperature of the oven, upon checking, is under 375o, you increase the temp by 25o each time.

You need to keep track of the number of times you had to increase the temperature by 25o.
Input #

The input will be the variable temperature which stores the current temperature of the oven.

You also have a variable count which keeps track of the number of times you increased the temperature of the oven.
 */

main() {
  int count = 0;
  var temp;

  print('Enter Temperature: ');
  temp = int.parse(stdin.readLineSync());

  while (temp < 375) {
    count += 1;
    temp += 25;
  }

  print(count);
}
