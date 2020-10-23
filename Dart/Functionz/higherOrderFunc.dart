List<int> forAll(Function f, List<int> intList) {
  var newList = List<int>();

  for (var i in intList) {
    newList.add(f(i));
  }

  return newList;
}

Function addListNums(list) {
  var sum = 0;
  for (var n in list) {
    sum += n;
  }

  print(sum);
}

Function taskToPerform(list) => addListNums(list);

// using fat arrow
int factorial(int n) => n == 1 ? 1 : n * factorial(n - 1);

// thesame thing, just different way of creating lambda Functions
Function addTwoNums = (int x, int y) => print(x + y);

var add2Nums = (int x, int y) {
  return x + y;
};

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

  addTwoNums(23, 89);
  print(add2Nums(23, 89));

  taskToPerform([1, 2, 4, 5, 6, 6, 6089]);
}
