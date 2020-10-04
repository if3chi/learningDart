main() {
  var myList = <int>[1, 2, 2, 4, 5];

  myList.add(3);
  myList.addAll([6, 7, 8, 9, 20]);
  print(myList);
  myList.removeAt(1);
  print(myList);
  print(myList.isNotEmpty);

  // using the map method
  var myNewList = myList.map((e) => e * e * e).toList();
  myList.clear();
  print(myList);
  print(myNewList);
}
