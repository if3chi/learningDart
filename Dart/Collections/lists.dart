//

main() {
  // growable list
  var myList = <int>[1, 2, 2, 4, 5];
  List<int> growableList = List();

  // fixed lenght list
  List<int> fixedLenList = List(5);

  // fixed lenght list
  fixedLenList[0] = 90;
  fixedLenList[1] = 90;
  fixedLenList[2] = 90;
  fixedLenList[3] = 90;
  fixedLenList[4] = 90;

  growableList.add(4);
  growableList.add(90);
  growableList.add(09);
  growableList.add(40);

  // update
  fixedLenList[1] = 20;
  fixedLenList[3] = 10;
  fixedLenList[2] = null; //to remove an element fron the list

  growableList.removeAt(0);

  // fixedLenList.removeAt(3); not allowed

  myList.add(3);
  myList.addAll([6, 7, 8, 9, 20]);
  print(myList);
  myList.removeAt(1);
  print(myList);
  print(myList.isNotEmpty);

  fixedLenList.forEach(print);
  growableList.forEach(print);

  // using the map method
  var myNewList = myList.map((e) => e * e * e).toList();
  myList.clear();
  print(myList);
  print(myNewList);
}
