class Person {
  var _name;
  var _age;

  walking() {
    print('$_name is walking');
  }

  void show() {
    print('$_name is $_age yrs old and is ');
    walking();
  }
}

main(List<String> args) {
  var person = Person();
  var person2 = Person();

  person.._name = "Jaspar";
  person._age = 29;

  person2._name = "Favor";

  person2.walking();
  person.show();
}
