class Animal {
  var name;
  var color;
  var animalSound;

  Animal() {
    print(
        'This is a default constructor runs before any other thing is run.\n');
  }

  Animal.namedConstructor(this.name, this.color,
      this.animalSound); // a named constructor, technically a class can have two constructors.

  void run() => print("A ${this.name} can climb, jump, crawl and run.");
  void sound() => print("A ${this.name} ${this.animalSound}s.");
  void hasColor() => print("My ${this.name} is ${this.color}.");
}

main() {
  var dog = new Animal();

  dog.name = 'Dog';
  dog.animalSound = 'Bark';
  dog.color = 'Brown';

  dog.run();
  dog.sound();
  dog.hasColor();

  print('\n');

  var cat = Animal();
  cat.animalSound = 'Meow';
  cat.name = 'Cat';
  cat.color = 'White';

  cat.run();
  cat.sound();
  cat.hasColor();

  print('\n');
  var goat = Animal.namedConstructor(
      'Goat', 'Black', 'Bleat'); // Parametarized named constructor
  goat.sound();
  goat.hasColor();
  goat.run();
}
