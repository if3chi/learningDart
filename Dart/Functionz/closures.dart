main() {
  String name = 'Ifechi';

  // accesing  the parent variable name
  var showName = () => print(name);

  showName();
// Even from a fucntion within a function
  Function car = () {
    String carName = 'Mercedes-Benz';

    Function buy = () {
      // carName = 'Ferrari';
      var buyCar = carName;
      print('$name bought a $buyCar E-Class 2021.');

      carName = 'Ferrari';
      name = 'Jaspar';
    };

    print(carName);
    return buy;
  };

  Function choice = car();
  choice();

  print(name);
}
