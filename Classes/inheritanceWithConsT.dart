class Animal {
  var color;

  Animal(color) {
    print('Animal Constaructor');
  }

  Animal.animalNamedCo();
  Animal.animalNamedCo2(String name) {
    print('Animal named constructor 2.');
  }
}

class Dog extends Animal {
  var name;
  var color;

  Dog(this.color) : super(color) {
    print('Dog Constructor');
  }

  Dog.dogNamedCo() : super.animalNamedCo() {
    print('Dog named constructor');
  }

  Dog.dogNamedCo2(this.color) : super.animalNamedCo2(color) {
    print('Dog named constructor 2');
  }
}

main(List<String> args) {
  var dog = new Dog('Black');
  var dog2 = new Dog.dogNamedCo();
  var dog3 = new Dog.dogNamedCo2('Brown');
}
