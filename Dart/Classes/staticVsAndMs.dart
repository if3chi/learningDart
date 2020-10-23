class Airplane {
  static const int capacity = 10;
  int weight = 200;

  static void printCap() {
    // print(weight); // not allowed likewise instance methods.
    print('Max capacity is $capacity');
  }

  void printWeight() {
    print('Airplane weights $weight');
  }
}

void main() {
  var airplane = Airplane();

  // airplane.printCap(); not allowed.
  airplane.printWeight();
  Airplane.printCap();
}
