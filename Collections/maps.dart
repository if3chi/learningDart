//

main() {
  // ways to create a Map

  var africa = {'nigeria': 'Abuja', 'ghana': 'Accra', 'Egypt': 'Cairo'};
  var africa2 = Map();
  Map<String, int> countryDialCode = Map();

  countryDialCode['nigeria'] = 234;
  countryDialCode['ghana'] = 233;

  africa2.addAll({'other': 'Countries'});
  africa2.addAll({'Main': 'Methods'});

  africa['52'] = 'Countries';

  print(africa2);
  print(africa);
  print(countryDialCode);

  countryDialCode.forEach((key, value) => print('$key : $value'));

// manipulating Maps
  print('\nAll Keys in Africa ${africa.keys}');
  print('All Values in Africa ${africa.values}');
  print('\nThe lenght of africa is ${africa.length}');
  print('The lenght of africa2 is ${africa2.length}');

  print('\nafrica2 contains key \'other\' ${africa2.containsKey('other')}\n');

  africa.remove('52');
  print(africa);
  print('The lenght of africa is ${africa.length}');
}
