class Animal {
  String name = 'Animal';
  String color;
  int numLegs;
  int age;
  var family;

  void showDetailed() {
    print('Animal details from Animal class.');
  }
}

class Dog extends Animal {
  String name;
  String breed;

// Method Overriding
  String showDetailed() {
    // super.showDetailed();
    print('${name} is a Dog, a breed of $breed from $family family, has '
        '$color color, $numLegs legs and is ${age}yrs old.');
  }
}

class Goat extends Animal {
  String name = 'Goat';
  String type;
}

main() {
  var dog = Dog();
  dog.name = 'Bull';
  dog.age = 2;
  dog.breed = 'German Shepard';
  dog.numLegs = 4;
  dog.color = 'Brown';
  dog.family = 'Canidae';
  dog.showDetailed();

  var goat = Goat();
  goat.name = 'Billy';
  goat.age = 3;
  goat.numLegs = 4;
  goat.color = 'Black';
  goat.family = 'Bovidae';

  print(goat.name);
  goat.showDetailed();
}
