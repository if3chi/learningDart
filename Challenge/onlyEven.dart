/**
 * Problem Statement #

You have to create and populate a list of integers using an already existing list. Multiply each item in the list with 3. The items of the final list should only contain even numbers.
 */

main() {
  var scores = [50, 96, 57, 68, 52, 87, 97, 43, 81, 30, 75, 60, 59];
  var evenList = List();

  for (var n in scores) {
    if ((n * 3) % 2 == 0) {
      evenList.add(n * 3);
    }
  }

  print(evenList);
}
