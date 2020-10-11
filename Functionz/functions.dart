main() {
  print(addNum(23, 109));
  print(addNums(23, 109));

// named parameters
  person('JJ', lastName: 'CK', gender: 'Male');

  // positional parameters
  person2('Jay', 'Val', 'Male');

  // named parameters with default
  defaultOptionalParams('I have defaults');
}

// normal method.
int addNums(num a, num b) {
  return a + b;
}

// syntatic sugar / fat arrow
int addNum(num a, num b) => a + b;

void person(String name, {String lastName, String gender}) {
  print(name);
  print(lastName);
  print(gender);
}

void person2(String name, [String lastName, String gender]) {
  print(name);
  print(lastName);
  print(gender);
}

void defaultOptionalParams(String name,
    {String defName = 'Dart', String anotherName = 'Flutter'}) {
  print('The name is $name');
  print('Optional named is $defName');
  print('Optional named with defualt $anotherName');
}
