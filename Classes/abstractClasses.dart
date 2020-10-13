abstract class Animal {
  String nameM;

  Animal(nameM) {
    print('Animal Constructor');
  }
  void family(); // Abstract method

  void printName() {
    print(nameM);
  }
}

class Goat extends Animal {
  Goat(String name) : super(name) {
    print('Goat constructor');
  }
  void family() {
    //family method must be overriden because it is an abstract method.
    print('Goat family');
  }
}

void main() {
  // var a = Animal(); //Abstract class can't be instantiated.

  var g = Goat('Billy');
}
