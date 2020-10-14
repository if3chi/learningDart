main() {
  Set<String> setOfFruitss = Set();
  var setOfFruits = <String>{
    'apples',
    'bananas',
    'oranges',
    'watermelon',
    'grapes',
    'apples'
  };

  setOfFruitss.add('mangoes');

  setOfFruits.add('mangoes');
  setOfFruits.addAll({'cashews', 'oranges', 'lemons'});

  print(setOfFruitss);
  print(setOfFruits);
  print('the lenght of setOfFruitss is ${setOfFruitss.length}');
  print('the lenght of setOfFruits is ${setOfFruits.length}');

  // contains or containsAll
  print('the set contains ${setOfFruits.contains('mangoes')}');

  // remove an item
  setOfFruits.remove('apples');
  print(setOfFruits);

  var setOfMoreFruits = {'oranges', 'kiwi', 'bananas'};

  print(setOfFruits.intersection(setOfMoreFruits));
  print(setOfFruits.union(setOfMoreFruits));
}
