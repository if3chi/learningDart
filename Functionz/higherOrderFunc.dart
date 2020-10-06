List<int> forAll(Function f, List<int> intList) {
  var newList = List<int>();

  for (var i in intList) {
    newList.add(f(i));
  }

  return newList;
}

int factorial(int n) {
  return n == 1 ? 1 : n * factorial(n - 1);
}

main(List<String> args) {
  var numList = [
    1,
    4,
    5,
  ];

  // using forEach to print the list items, paasing tit the print func.
  numList.forEach(print);

  // using forAll I created to print the factorials of the items in the list
  print(forAll(factorial, numList));
}
