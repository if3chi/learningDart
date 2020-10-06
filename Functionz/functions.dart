main() {
  print(addNum(23, 109));
  print(addNums(23, 109));

// named parameters
  person('JJ', lastName: 'CK', gender: 'Male');

  // positional parameters
  person2('Jay', 'Val', 'Male');
}

// normal method.
int addNums(num a, num b) {
  return a + b;
}

// syntatic sugar
int addNum(num a, num b) => a + b;

person(String name, {String lastName, String gender}) {
  print(name);
  print(lastName);
  print(gender);
}

person2(String name, [String lastName, String gender]) {
  print(name);
  print(lastName);
  print(gender);
  return null;
}
